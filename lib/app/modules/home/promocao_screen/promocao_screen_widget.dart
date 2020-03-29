import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_promo/custom_card_promo_widget.dart';

class PromocaoScreenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "images/logo2.png",
                  height: 100,
                  width: 100,
                ),
                Text(
                  "Bem Vindo(a) Fulana!",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Confira nossas Ofertas!",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 350,
                  child: CustomCardPromoWidget(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
