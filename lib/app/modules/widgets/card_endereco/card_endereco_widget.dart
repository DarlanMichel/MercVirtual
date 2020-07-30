import 'package:flutter/material.dart';

class CardEnderecoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: Theme.of(context).accentColor,
          width: 2
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.home,
              color: Theme.of(context).accentColor,
              size: 45,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Descrição",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Theme.of(context).accentColor,
                      ),
                    )
                  ],
                ),
                Text(
                  "Nome da rua, numero - Bairro,",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Cidade - UF",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Complemento - Referencia",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
