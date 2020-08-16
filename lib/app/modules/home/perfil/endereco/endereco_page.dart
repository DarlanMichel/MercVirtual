import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/models/endereco_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository.dart';
import 'package:mercadovirtual/app/modules/widgets/card_endereco/card_endereco_widget.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height -170,
              child: Observer(
                builder: (_){
                  if(controller.listaEndereco.hasError){
                    return Center(
                        child: RaisedButton(
                          onPressed: controller.getEndereco,
                          child: Text('Recarregar'),
                        )
                    );
                  }
                  if(controller.listaEndereco.data == null){
                    return Center(
                      child: Text("Nenhum Endereço cadastrado!"),
                    );
                  }

                  List<EnderecoModel> listEnd = controller.listaEndereco.data;

                  return ListView.builder(
                    itemCount: listEnd.length,
                    itemBuilder: (_, index){
                      EnderecoModel model = listEnd[index];
                      return CardEnderecoWidget(
                        model: model,
                        context: _,
                      );
                    },
                  );
                },
              ),
            ),
            CustomRaisebuttonWidget(
              text: "Novo Endereço",
              cor: Theme.of(context).accentColor,
              textcolor: Colors.white,
              function: (){
                Modular.to.pushNamed("/Home/perfil/endereco/endcadastro");
              },
            ),
          ],
        ),
      )
    );
  }
}
