import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_page.dart';
import 'package:mercadovirtual/app/modules/login/login/login_page.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';

class HomeloginPage extends StatefulWidget {
  final String title;
  const HomeloginPage({Key key, this.title = "Homelogin"}) : super(key: key);

  @override
  _HomeloginPageState createState() => _HomeloginPageState();
}

class _HomeloginPageState extends State<HomeloginPage> {
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
                  function: (){
                    Modular.to.pushNamed("cadastro");
                  },
                  //nav: "cadastro",
                ),
                SizedBox(
                  height: 30,
                ),
                CustomRaisebuttonWidget(
                  cor: Theme.of(context).accentColor,
                  text: "Entrar",
                  textcolor: Colors.white,
                  function: (){
                    Modular.to.pushNamed("login");
                  },
                  //nav: "login",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
