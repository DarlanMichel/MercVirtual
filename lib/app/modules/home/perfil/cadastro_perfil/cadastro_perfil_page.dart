import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/textfield_sem_icon/textfield_sem_icon_widget.dart';
import 'package:oktoast/oktoast.dart';
import 'cadastro_perfil_controller.dart';

class CadastroPerfilPage extends StatefulWidget {
  final String title;
  final String nome;
  final String email;
  final String id;
  const CadastroPerfilPage({Key key, this.title = "Cadastro do Perfil", this.nome, this.email, this.id})
      : super(key: key);

  @override
  _CadastroPerfilPageState createState() => _CadastroPerfilPageState();
}

class _CadastroPerfilPageState
    extends ModularState<CadastroPerfilPage, CadastroPerfilController> {

  @override
  Widget build(BuildContext context) {

    controller.setNome(widget.nome);
    controller.setEmail(widget.email);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextfieldSemIconWidget(
              keyboard: TextInputType.text,
              text: "Nome",
              change: controller.setNome,
              controller: controller.nome,
            ),
            TextfieldSemIconWidget(
              keyboard: TextInputType.text,
              text: "E-mail",
              change: controller.setEmail,
              controller: controller.email,
            ),
            SizedBox(
              height: 20,
            ),
            CustomRaisebuttonWidget(
              text: "Salvar",
              cor: Theme.of(context).accentColor,
              textcolor: Colors.white,
              function: () {
                controller.save(controller.nome, controller.email, widget.id);
                showToast(
                  "Perfil Editado!",
                  position: ToastPosition.center,
                  duration: Duration(seconds: 3),
                );
                Navigator.pop(context);
              },
            )
          ],
        ),
      )
    );
  }
}
