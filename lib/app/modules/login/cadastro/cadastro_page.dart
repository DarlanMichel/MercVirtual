import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_widget.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends ModularState<CadastroPage, CadastroController> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "images/logo2.png",
                  height: 200,
                  width: 200,
                ),
                CustomTextfieldWidget(
                  text: "Nome",
                  pass: false,
                  keyboard: TextInputType.text,
                  icon: Icons.person,
                  change: controller.setNome,
                  validator: (String text){
                    if (text.isEmpty || text.trim() == ''){
                      return 'Campo obrigatório';
                    } else if (text.trim().split(' ').length <= 1){
                      return 'Preencha seu Nome completo';
                    }else {
                      return null;
                    }
                  },
                ),
                CustomTextfieldWidget(
                  text: "E-mail",
                  pass: false,
                  keyboard: TextInputType.emailAddress,
                  icon: Icons.email,
                  change: controller.setEmail,
                  validator: (String text){
                    if (text.isEmpty || text.trim() == ''){
                      return 'Campo obrigatório';
                    }else if (!controller.emailValid(text)){
                      return 'E-mail Inválido!';
                    }else{
                      return null;
                    }
                  },
                ),
                CustomTextfieldWidget(
                  text: "Senha",
                  pass: true,
                  keyboard: TextInputType.text,
                  icon: Icons.lock,
                  change: controller.setSenha,
                  validator: (String text){
                    if (text.isEmpty || text.trim() == ''){
                      return 'Campo obrigatório';
                    }else if (text.length < 6){
                      return 'Minimo 6 characteres!';
                    }else{
                      return null;
                    }
                  },
                ),
                CustomTextfieldWidget(
                  text: "Repetir Senha",
                  pass: true,
                  keyboard: TextInputType.text,
                  icon: Icons.lock,
                  change: controller.setConfirmaSenha,
                  validator: (String text){
                    if (text.isEmpty || text.trim() == ''){
                      return 'Campo obrigatório';
                    }else if (text.length < 6){
                      return 'Minimo 6 characteres!';
                    }else if(text != controller.senha){
                      return 'Senhas diferentes!';
                    }else{
                      return null;
                    }
                  },
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
                          Modular.to.pushReplacementNamed("/login");
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
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                            color: Theme.of(context).accentColor,
                            width: 3
                        )
                    ),
                    onPressed: () async {
                      if ( _formkey.currentState.validate()){
                        await controller.criarConta();
                        await controller.insert(controller.nome, controller.email, controller.usuario);
                        if (controller.valid == false)
                          Modular.to.pushReplacementNamed("/Home");
                        }
                      },
                    color: Theme.of(context).accentColor,
                    child: Observer(
                      builder: (_){
                        return controller.valid ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        ) :
                        const Text(
                          "Cadastrar",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),
                        );
                      },
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
