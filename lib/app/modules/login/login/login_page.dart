import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mercadovirtual/app/modules/login/login/login_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_widget.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
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
                  text: "E-mail",
                  pass: false,
                  keyboard: TextInputType.emailAddress,
                  icon: Icons.person,
                  change: controller.setEmail,
                  validator: (String text){
                    if (text.isEmpty || text.trim() == ''){
                      return 'Campo obrigatório';
                    }else if (!text.contains('@')){
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
                      if ( _formkey.currentState.validate()) {
                        await controller.login();
                        Modular.to.pushReplacementNamed("/Home");
                      }
                    },
                    color: Theme.of(context).accentColor,
                    child: Observer(
                      builder: (_){
                        return controller.loading ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        ) :
                        const Text(
                          "Entrar",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded (
                      child: Container(
                        margin: EdgeInsets.only(left: 30, right: 20),
                        child: Divider(
                          color: Theme.of(context).accentColor,
                          height: 36,
                        ),
                      ),
                    ),
                    Text(
                      "Ou conecte com",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    Expanded (
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 30),
                        child: Divider(
                          color: Theme.of(context).accentColor,
                          height: 36,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 35,
                        padding: EdgeInsets.only(right: 15, left: 30),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          onPressed: () async{
//                            await controller.signInWithFacebook();
//                            await controller.insert(controller.nome, controller.email, controller.usuario);
//                            Modular.to.pushReplacementNamed("/Home");
                          },
                          color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                              ),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 14
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 35,
                        padding: EdgeInsets.only(right: 30, left: 15),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          onPressed: () async{
                            await controller.signInWithGoogle();
                            await controller.insert(controller.nome, controller.email, controller.usuario);
                            Modular.to.pushReplacementNamed("/Home");
                          },
                          color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.google,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                              ),
                              Text(
                                "Google",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 14
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Esqueci a Senha",
                          style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).accentColor
                          ),
                        ),
                        Icon(Icons.lock,
                          color: Theme.of(context).accentColor,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
