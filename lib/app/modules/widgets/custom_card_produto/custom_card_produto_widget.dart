import 'package:flutter/material.dart';

class CustomCardProdutoWidget extends StatelessWidget {
  final String descricao;
  final double preco;
  final int ean;

  const CustomCardProdutoWidget({Key key,@required this.descricao,@required this.preco,@required this.ean}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 10,
        color: Colors.white,
        child: Container(
          height: 100,
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
                      Text(
                        descricao,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 18,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "R\$ $preco",
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
