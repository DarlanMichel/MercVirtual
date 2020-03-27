import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/login/login_screen/login_screen_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_widget.dart';

class CadastroScreenWidget extends StatelessWidget {
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
              CustomTextfieldWidget(text: "Senha", pass: true, keyboard: TextInputType.text, icon: Icons.lock),
              CustomTextfieldWidget(text: "Repetir Senha", pass: true, keyboard: TextInputType.text, icon: Icons.lock),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreenWidget()));
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
              CustomRaisebuttonWidget(
                cor: Theme.of(context).accentColor,
                text: "Cadastrar",
                textcolor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
