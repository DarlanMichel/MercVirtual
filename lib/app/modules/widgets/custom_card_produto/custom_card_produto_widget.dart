import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';

class CustomCardProdutoWidget extends StatelessWidget {
  final ProdutoModel produtoModel;
  final Function onTap;
  const CustomCardProdutoWidget({Key key, this.produtoModel, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                    "https://cdn-cosmos.bluesoft.com.br/products/${produtoModel.ean}",
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
                        produtoModel.descricao,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          ((produtoModel.novopreco != 0) && (produtoModel.datafim.isAfter(DateTime.now())) )  ? "R\$ ${produtoModel.novopreco.toStringAsFixed(2).replaceAll('.', ',')}" : "R\$ ${produtoModel.preco.toStringAsFixed(2).replaceAll('.', ',')}",
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 18,
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
