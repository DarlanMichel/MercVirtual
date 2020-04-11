import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomCardSectionWidget extends StatelessWidget {
  final String nomeCategoria;
  final int codCategoria;
  const CustomCardSectionWidget({Key key,@required this.nomeCategoria,@required this.codCategoria}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //Navigator.pushNamed(context, "/produto");
        Modular.to.pushNamed('/categoria/produto/${codCategoria}');
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 10,
        color: Colors.white,
        child: Container(
          height: 120,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  "images/icon-caixa.png",
                  height: 60,
                  width: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  direction: Axis.vertical,
                  children: <Widget>[
                    Text(
                      nomeCategoria,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
