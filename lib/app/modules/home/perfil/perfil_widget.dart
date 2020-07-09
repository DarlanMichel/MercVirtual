import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PerfilWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          "https://forum.imasters.com.br/uploads/monthly_2018_04/D_member_120673.png"
                        )
                      )
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          "Darlan Michel da Silva",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text("darlan.michel@hotmail.com")
                    ]
                  ),
                ),
                IconButton(icon: Icon(Icons.arrow_forward_ios),)
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.location_on,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Endereços",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("Meus Endereços de Entrega")
                    ],
                  ),
                ),
                IconButton(icon: Icon(Icons.arrow_forward_ios),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                      Icons.account_balance_wallet,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Pagamento",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("Minhas Formas de Pagamento")
                    ],
                  ),
                ),
                IconButton(icon: Icon(Icons.arrow_forward_ios),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                      Icons.local_mall,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Pedidos",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("Acompanhe seus pedidos")
                    ],
                  ),
                ),
                IconButton(icon: Icon(Icons.arrow_forward_ios),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
