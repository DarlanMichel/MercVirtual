import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_promo/custom_card_promo_widget.dart';

class PromocaoScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
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
      ),
    );
  }
}
