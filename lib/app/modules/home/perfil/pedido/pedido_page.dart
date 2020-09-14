import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/models/pedido_model.dart';
import 'package:mercadovirtual/app/modules/widgets/card_pedido/card_pedido_widget.dart';
import 'pedido_controller.dart';

class PedidoPage extends StatefulWidget {
  final String title;
  const PedidoPage({Key key, this.title = "Pedidos"}) : super(key: key);

  @override
  _PedidoPageState createState() => _PedidoPageState();
}

class _PedidoPageState extends ModularState<PedidoPage, PedidoController> {
  @override
  Widget build(BuildContext context) {
    controller.getPedidos();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height -90,
              child: Observer(
                builder: (_){
                  if(controller.listaPedidos.hasError){
                    print(controller.listaPedidos.error);
                    return Center(
                        child: RaisedButton(
                          onPressed: controller.getPedidos(),
                          child: Text('Recarregar'),
                        )
                    );
                  }
                  if(controller.listaPedidos.data == null){
                    return Center(
                      child: Text("Nenhum Pedido Feito!"),
                    );
                  }

                  List<PedidoModel> listPedido = controller.listaPedidos.data;

                  return ListView.builder(
                    itemCount: listPedido.length,
                    itemBuilder: (_, index){
                      PedidoModel model = listPedido[index];
                      return CardPedidoWidget(
                        model: model,
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
