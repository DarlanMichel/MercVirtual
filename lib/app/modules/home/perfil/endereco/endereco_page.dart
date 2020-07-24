import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/textfield_sem_icon/textfield_sem_icon_widget.dart';
import 'endereco_controller.dart';

class EnderecoPage extends StatefulWidget {
  final String title;
  const EnderecoPage({Key key, this.title = "Endereços"}) : super(key: key);

  @override
  _EnderecoPageState createState() => _EnderecoPageState();
}

class _EnderecoPageState
    extends ModularState<EnderecoPage, EnderecoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: Text(widget.title),
      ),
      body: Center(
        child: CustomRaisebuttonWidget(
          text: "Novo Endereço",
          cor: Theme.of(context).accentColor,
          textcolor: Colors.white,
          nav: "endcadastro"
        ),
      )
    );
  }
}
