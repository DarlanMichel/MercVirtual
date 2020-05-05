import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';

class CardTotalCarrinhoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Resumo do Pedido",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).accentColor
              ),
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Subtotal"
                ),
                Text(
                  "R\$ 20,20"
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                    "Desconto"
                ),
                Text(
                    "R\$ 0,00"
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                    "Frete"
                ),
                Text(
                    "R\$ 10,00"
                )
              ],
            ),
            Divider(),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                    "Total",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).accentColor
                  ),
                ),
                Text(
                    "R\$ 30,20",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).accentColor,
                      fontSize: 18
                  ),
                )
              ],
            ),
            SizedBox(height: 12,),
            CustomRaisebuttonWidget(
              text: "Finalizar Pedido",
              cor: Theme.of(context).accentColor,
              textcolor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
