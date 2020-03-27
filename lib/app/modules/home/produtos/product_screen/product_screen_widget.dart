import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_produto/custom_card_produto_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_widget.dart';

class ProductScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Salgados"),
        backgroundColor: Theme.of(context).accentColor,
      ),

      body: Column(
        children: <Widget>[
          Container(
            child: CustomTextfieldWidget(text: "Procurar", pass: false, keyboard: TextInputType.text, icon: Icons.search,),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              //height: MediaQuery.of(context).size.height,
              child: ListView(
                padding: EdgeInsets.all(8.0),
                children: <Widget>[
                  CustomCardProdutoWidget(),
                  CustomCardProdutoWidget(),
                  CustomCardProdutoWidget(),
                  CustomCardProdutoWidget(),
                  CustomCardProdutoWidget(),
                  CustomCardProdutoWidget(),
                  CustomCardProdutoWidget(),
                  CustomCardProdutoWidget(),
                  CustomCardProdutoWidget(),
                  CustomCardProdutoWidget(),
                  CustomCardProdutoWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.shopping_cart),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
