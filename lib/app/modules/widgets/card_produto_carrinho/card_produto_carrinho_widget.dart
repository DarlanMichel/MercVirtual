import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';
import 'package:mercadovirtual/app/modules/widgets/card_produto_carrinho/card_produto_carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_dialog_excluir/custom_dialog_excluir_widget.dart';

class CardProdutoCarrinhoWidget extends StatelessWidget {
  final CarrinhoModel model;

  const CardProdutoCarrinhoWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardProdutoCarrinhoController _count = CardProdutoCarrinhoController();
    _count.value = model.qtd;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 10,
      color: Colors.white,
      child: Container(
        child: Row(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: FadeInImage(
                  image: NetworkImage(
                    "https://cdn-cosmos.bluesoft.com.br/products/${model.produto.ean}",
                  ),
                  placeholder: AssetImage(
                      "images/notimage.png"
                  ),
                  height: 60,
                  width: 60,
                )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "${model.produto.descricao}",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        ((model.produto.novopreco != 0) && (model.produto.datafim.isAfter(DateTime.now())) )  ? "R\$ ${model.produto.novopreco.toStringAsFixed(2).replaceAll('.', ',')}" : "R\$ ${model.produto.preco.toStringAsFixed(2).replaceAll('.', ',')}",
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: (){
                            if (_count.value == 1){
                              _count.value = 1;
                            }else{
                              _count.value --;
                            }
                            model.qtd = _count.value;
                            Modular.get<CarrinhoController>().update(model);
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Observer(
                            builder: (_) => Text(
                              "${_count.value}",
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              _count.value ++;
                              model.qtd = _count.value;
                              Modular.get<CarrinhoController>().update(model);
                            }
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(FontAwesomeIcons.trashAlt),
                    iconSize: 18,
                    onPressed: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context){
                            return CustomDialogExcluirWidget(model: model,);
                          }
                      );
                    },
                  ),
                  Container(
                    height: 60,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

