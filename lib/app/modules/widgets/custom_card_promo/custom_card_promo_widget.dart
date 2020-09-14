import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_dialog_add_produto/custom_dialog_add_produto_widget.dart';

class CustomCardPromoWidget extends StatelessWidget {
  final ProdutoModel model;

  const CustomCardPromoWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showDialog(
            context: context,
            builder: (BuildContext context){
              return CustomDialogAddProdutoWidget(model: model,);
            }
        );
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
                      padding: const EdgeInsets.only(top: 4.0,right: 8, left: 8),
                      child: Text(
                        model.descricao,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      child: FadeInImage(
                        image: NetworkImage(
                          "https://cdn-cosmos.bluesoft.com.br/products/${model.ean}",
                        ),
                        placeholder: AssetImage(
                            "images/notimage.png"
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
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
                                  "De: R\$ ${model.preco.toStringAsFixed(2).replaceAll('.', ',')}",
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
