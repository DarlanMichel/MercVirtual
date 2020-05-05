import 'package:flutter/material.dart';

class CustomAlertdialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(
          "Produto adicionado ao carrinho!"
      ),
      actions: [
        FlatButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text(
            "OK"
          ),
        )
      ],
    );
  }
}
