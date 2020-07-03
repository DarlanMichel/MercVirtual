import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mercadovirtual/app/modules/home/models/promocao_model.dart';

class CustomCardPromoWidget extends StatelessWidget {
  final PromocaoModel model;

  const CustomCardPromoWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
//        CustomDialogAddProdutoWidget(
//          idProduto: idProduto,
//          descricao: descricao,
//          scaffoldKey: key,
//        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 10,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 260,
              right: -30,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor.withOpacity(0.4),
                radius: 100,
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Text(
                        model.produto.descricao,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FadeInImage(
                      image: NetworkImage(
                        "https://cdn-cosmos.bluesoft.com.br/products/${model.produto.ean}",
                      ),
                      placeholder: AssetImage(
                          "images/notimage.png"
                      ),
                      height: 200,
                      width: 200,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                                "Oferta válida até \n ${DateFormat('dd/MM/yyyy').format(model.datafim)}"
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                  "De: R\$ ${model.produto.preco.toStringAsFixed(2).replaceAll('.', ',')}",
                                  style: TextStyle(
                                      color: Theme.of(context).accentColor,
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough
                                  )
                              ),
                              Text(
                                  "Por: R\$ ${model.novopreco.toStringAsFixed(2).replaceAll('.', ',')}",
                                  style: TextStyle(
                                      color: Theme.of(context).accentColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
