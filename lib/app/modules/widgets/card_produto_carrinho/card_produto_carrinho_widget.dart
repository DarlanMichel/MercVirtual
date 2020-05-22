import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mercadovirtual/app/modules/widgets/card_produto_carrinho/card_produto_carrinho_controller.dart';

class CardProdutoCarrinhoWidget extends StatelessWidget {
  final String descricao;
  final double preco;
  final int ean;
  final int idProduto;
  final int qtd;

  const CardProdutoCarrinhoWidget({Key key, this.descricao, this.preco, this.ean, this.idProduto, this.qtd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardProdutoCarrinhoController _count = CardProdutoCarrinhoController();
    _count.value = qtd;

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
                    "https://cdn-cosmos.bluesoft.com.br/products/$ean",
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
                        "$descricao",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "$preco",
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
                              return _count.value = 1;
                            }else{
                              return _count.value --;
                            }
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
                            onPressed: (){
                              _count.value ++;
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
                    onPressed: (){},
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
