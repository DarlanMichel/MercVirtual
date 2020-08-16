import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pagamento_controller.dart';

class PagamentoPage extends StatefulWidget {
  final String title;
  const PagamentoPage({Key key, this.title = "Pagamento"}) : super(key: key);

  @override
  _PagamentoPageState createState() => _PagamentoPageState();
}

class _PagamentoPageState
    extends ModularState<PagamentoPage, PagamentoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Center(
        child: Text(
            "Em Manutenção!",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
