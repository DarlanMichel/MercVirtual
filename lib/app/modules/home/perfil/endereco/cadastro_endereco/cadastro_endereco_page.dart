import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/textfield_sem_icon/textfield_sem_icon_widget.dart';
import 'package:oktoast/oktoast.dart';
import 'cadastro_endereco_controller.dart';

class CadastroEnderecoPage extends StatefulWidget {
  final String title;
  const CadastroEnderecoPage({Key key, this.title = "Cadastro de Endereços"})
      : super(key: key);

  @override
  _CadastroEnderecoPageState createState() => _CadastroEnderecoPageState();
}

class _CadastroEnderecoPageState
    extends ModularState<CadastroEnderecoPage, CadastroEnderecoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextfieldSemIconWidget(
              keyboard: TextInputType.text,
              pass: false,
              text: "Descrição do Endereço",
              change: controller.setDescricao,
            ),
            TextfieldSemIconWidget(
              keyboard: TextInputType.text,
              pass: false,
              text: "CEP",
              change: controller.setCEP,
            ),
            Row(
              children: [
                Expanded(
                  child: Observer(
                    builder: (_){
                      return TextfieldSemIconWidget(
                        keyboard: TextInputType.text,
                        pass: false,
                        text: "Rua",
                        change: controller.setRua,
                        controller: controller.rua,
                      );
                    },
                  )
                ),

                SizedBox(
                  width: 100,
                  child: TextfieldSemIconWidget(
                    keyboard: TextInputType.text,
                    pass: false,
                    text: "Nº",
                    change: controller.setNum,
                  ),
                ),
              ],
            ),

            TextfieldSemIconWidget(
              keyboard: TextInputType.text,
              pass: false,
              text: "Complemento",
              change: controller.setComplemento,
            ),
            Observer(
              builder: (_){
                return TextfieldSemIconWidget(
                  keyboard: TextInputType.text,
                  pass: false,
                  text: "Bairro",
                  change: controller.setBairro,
                  controller: controller.bairro,
                );
              },
            ),
            TextfieldSemIconWidget(
              keyboard: TextInputType.text,
              pass: false,
              text: "Referência",
              change: controller.setReferencia,
            ),
            Observer(
              builder: (_){
                return TextfieldSemIconWidget(
                    keyboard: TextInputType.text,
                    pass: false,
                    text: "Cidade",
                    change: controller.setCidade,
                    controller: controller.cidade,
                );
              },
            ),
            Observer(
              builder: (_){
                return TextfieldSemIconWidget(
                  keyboard: TextInputType.text,
                  pass: false,
                  text: "UF",
                  change: controller.setUF,
                  controller: controller.uf,
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomRaisebuttonWidget(
              text: "Salvar",
              cor: Theme.of(context).accentColor,
              textcolor: Colors.white,
              function: (){
                controller.save(controller.bairro, controller.cep, controller.cidade, controller.complemento, controller.descricao, controller.uf, controller.num, controller.referencia, controller.rua);
                showToast(
                  "Endereço cadastrado!",
                  position: ToastPosition.center,
                  duration: Duration(seconds: 3),
                );
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
