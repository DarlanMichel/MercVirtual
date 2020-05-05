import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCardPromoWidget extends StatelessWidget {
  final String descricao;
  final int ean;
  final DateTime datafim;
  final double preco;
  final double novopreco;

  const CustomCardPromoWidget({Key key,@required this.descricao,@required this.ean,@required this.datafim,@required this.preco,@required this.novopreco}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  Text(
                    descricao,
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeInImage(
                    image: NetworkImage(
                      "https://cdn-cosmos.bluesoft.com.br/products/$ean",
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
                              "Oferta válida até \n ${DateFormat('dd/MM/yyyy').format(datafim)}"
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                                "De: R\$ ${preco.toStringAsFixed(2).replaceAll('.', ',')}",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 14,
                                    decoration: TextDecoration.lineThrough
                                )
                            ),
                            Text(
                                "Por: R\$ ${novopreco.toStringAsFixed(2).replaceAll('.', ',')}",
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
    );
  }
}
