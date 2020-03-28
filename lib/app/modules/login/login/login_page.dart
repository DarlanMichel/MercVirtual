import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_widget.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              CustomTextfieldWidget(text: "E-mail", pass: false, keyboard: TextInputType.emailAddress, icon: Icons.person,),
              CustomTextfieldWidget(text: "Senha", pass: true, keyboard: TextInputType.text, icon: Icons.lock,),
              SizedBox(
                height: 20,
              ),
              CustomRaisebuttonWidget(
                cor: Theme.of(context).accentColor,
                text: "Entrar",
                textcolor: Colors.white,
                nav: "Home",
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
                        onPressed: (){},
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
                        onPressed: (){},
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
    );
  }
}
