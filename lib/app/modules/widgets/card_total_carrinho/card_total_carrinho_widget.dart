import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';

class CardTotalCarrinhoWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
                  Observer(builder: (BuildContext context){
                    return Modular.get<CarrinhoController>()?.subtotal == null ? Text("R\$ 0,00",) : Text("R\$ ${Modular.get<CarrinhoController>().subtotal.toStringAsFixed(2).replaceAll('.', ',')}",);
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
                  Text(
                      "R\$ 0,00"
                  )
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
                    builder: (BuildContext context){
                    double total = Modular.get<CarrinhoController>().subtotal + 10; //frete - desconto
                    return Text(
                      "R\$ ${total.toStringAsFixed(2).replaceAll('.', ',')}",
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
                  onPressed: (){},
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
