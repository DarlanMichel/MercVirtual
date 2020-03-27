import 'package:flutter/material.dart';

class CustomCardProdutoWidget extends StatelessWidget {
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
                child: Image.asset(
                  "images/lays.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Batata Lay's 96g un",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 24,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "R\$ 5,98",
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
