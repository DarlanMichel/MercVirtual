import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/login/cadastro_screen/cadastro_screen_widget.dart';
import 'package:mercadovirtual/app/modules/login/login_screen/login_screen_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';

class HomeLoginScreen extends StatefulWidget {
  final String title;
  const HomeLoginScreen({Key key, this.title = "HomeLogin"}) : super(key: key);
  @override
  _HomeLoginScreenState createState() => _HomeLoginScreenState();
}

class _HomeLoginScreenState extends State<HomeLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "images/logo2.png",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 70,
                ),
                CustomRaisebuttonWidget(
                  cor: Colors.white,
                  text: "Cadastre-se grátis",
                  textcolor: Theme.of(context).accentColor,
                  nav: CadastroScreenWidget(),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomRaisebuttonWidget(
                  cor: Theme.of(context).accentColor,
                  text: "Entrar",
                  textcolor: Colors.white,
                  nav: LoginScreenWidget(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


