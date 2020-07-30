import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_controller.dart';
import 'package:mercadovirtual/app/modules/login/login/login_page.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_widget.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends ModularState<CadastroPage, CadastroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                "images/logo2.png",
                height: 200,
                width: 200,
              ),
              CustomTextfieldWidget(
                text: "E-mail",
                pass: false,
                keyboard: TextInputType.emailAddress,
                icon: Icons.person,
                change: controller.setEmail,
              ),
              CustomTextfieldWidget(
                  text: "Senha",
                  pass: true,
                  keyboard: TextInputType.text,
                  icon: Icons.lock,
                  change: controller.setSenha,
              ),
              CustomTextfieldWidget(
                  text: "Repetir Senha",
                  pass: true,
                  keyboard: TextInputType.text,
                  icon: Icons.lock,
                  change: controller.setConfirmaSenha,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        "Já tem uma Conta?",
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).accentColor
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                padding: EdgeInsets.only(right: 30, left: 30),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                          color: Theme.of(context).accentColor,
                          width: 3
                      )
                  ),
                  onPressed: () async {
                    var result = await controller.criarConta();

                    if (result) {
                      Modular.to.pushReplacementNamed("/Home");
                    } else {
                      showDialog(
                          context: context,
                          child: AlertDialog(
                            content: Text(
                                "Erro ao tentar criar a conta! Tente novamente!"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Fechar"),
                                onPressed: () {
                                  Modular.to.pop();
                                },
                              )
                            ],
                          ));
                    }
                  },
                  color: Theme.of(context).accentColor,
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),
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
