import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/home/models/pedido_model.dart';

class CardPedidoWidget extends StatelessWidget {
  final PedidoModel model;

  const CardPedidoWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Código do pedido: ${model.id}",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 4.0,),
            Text(
              _produtosText(model),
            ),
            SizedBox(height: 4.0,),
            Text(
              "Status do Pedido:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildCircle("1", "Recebido", model.status, 1),
                Container(
                  height: 1.0,
                  width: 40.0,
                  color: Colors.grey[500],
                ),
                _buildCircle("2", "Preparado", model.status, 2),
                Container(
                  height: 1.0,
                  width: 40.0,
                  color: Colors.grey[500],
                ),
                _buildCircle("3", "Entregue", model.status, 3),
              ],
            )
          ],
        )
      ),
    );
  }

  String _produtosText(PedidoModel model){
    String text = "Descrição:\n";
    for(var i = 0; i < model.carrinhos.length; i++){
      text += "${model.carrinhos[i].qtd} x ${model.carrinhos[i].produto.descricao} - R\$ ${model.carrinhos[i].produto.preco.toStringAsFixed(2)}\n";
    }
    text += "Total: R\$ ${model.valorTotal.toStringAsFixed(2)}";
    return text;
  }

  Widget _buildCircle(String title, String subtitle, int status, int thisStatus){
    Color backColor;
    Widget child;

    if(status < thisStatus){
      backColor = Colors.grey[500];
      child = Text(title, style: TextStyle(color: Colors.white),);
    }else if(status == thisStatus){
      backColor = Colors.blue;
      child = Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Text(title, style: TextStyle(color: Colors.white),),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
        ],
      );
    } else {
      backColor = Colors.green;
      child = Icon(Icons.check, color: Colors.white,);
    }

    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 20.0,
          backgroundColor: backColor,
          child: child,
        ),
        Text(subtitle)
      ],
    );
  }
}
