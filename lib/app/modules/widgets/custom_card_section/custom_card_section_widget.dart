import 'package:flutter/material.dart';

class CustomCardSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed("/produto");
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
                Text(
                  "Salgados",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).accentColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
