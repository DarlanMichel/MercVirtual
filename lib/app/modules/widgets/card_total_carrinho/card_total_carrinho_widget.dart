import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pedido/pedido_controller.dart';
import 'package:oktoast/oktoast.dart';

class CardTotalCarrinhoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _total = 0.00;
    double _desconto = 0.00;
    CarrinhoController _carrinhoController = Modular.get<CarrinhoController>();

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Resumo do Pedido",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).accentColor
                ),
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                      "Subtotal"
                  ),
                  Observer(builder: (_){
                      return Text("R\$ ${_carrinhoController.subtotal.toStringAsFixed(2).replaceAll('.', ',')}",);
                    }
                  )
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                      "Desconto"
                  ),
                  Observer(
                    builder: (_){
                      _desconto = _carrinhoController.subtotal *(_carrinhoController.desconto/100);
                      return Text("R\$ ${_desconto.toStringAsFixed(2).replaceAll('.', ',')}",);
                    },
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                      "Frete"
                  ),
                  Text(
                      "R\$ 10,00"
                  )
                ],
              ),
              Divider(),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).accentColor
                    ),
                  ),
                  Observer(
                    builder: (_){
                    _total = _carrinhoController.subtotal + 10 - (_carrinhoController.subtotal *(_carrinhoController.desconto/100)); //frete - desconto
                    return Text(
                     "R\$ ${_total.toStringAsFixed(2).replaceAll('.', ',')}",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).accentColor,
                        fontSize: 18
                    ),
                  );
                  },
                  )
                ],
              ),
              SizedBox(height: 12,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                padding: EdgeInsets.only(right: 30, left: 30),

                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                          color: Theme.of(context).accentColor,
                          width: 3
                      )
                  ),
                  onPressed: (){
                    if( _carrinhoController.selectedEndereco == null){
                      showDialog(
                          context: context,
                          builder: (_){
                            return AlertDialog(
                              title: Text("Selecione um Endereço!"),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }
                      );
                    }else if( _carrinhoController.selectedFormaPagto == null){
                      showDialog(
                        context: context,
                        builder: (_){
                            return AlertDialog(
                              title: Text("Selecione a Forma de Pagamento!"),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                        }
                      );
                    }else {
                      Modular.get<PedidoController>().save(
                          _carrinhoController.selectedFormaPagto.id,
                          _carrinhoController.selectedEndereco.id,
                          _total
                      );
                      _carrinhoController.saveCupom();
                      showToast("Pedido realizado com Sucesso!");
                    }
                  },
                  color: Theme.of(context).accentColor,
                  child: Text(
                    "Finalizar Pedido",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
