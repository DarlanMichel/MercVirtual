import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_produto/custom_card_produto_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_widget.dart';

class ProductScreenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: 12,
                itemBuilder: (_, index){
                  return CustomCardProdutoWidget();
                },
              ),
            ),
          ),
          SizedBox(
            height: 80,
          )
        ],
      );
  }
}
