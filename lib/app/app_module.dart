import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_controller.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_page.dart';
import 'package:mercadovirtual/app/modules/login/homelogin/homelogin_page.dart';
import 'package:mercadovirtual/app/modules/login/login/login_controller.dart';
import 'package:mercadovirtual/app/modules/login/homelogin/homelogin_controller.dart';
import 'package:mercadovirtual/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/app_widget.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';
import 'package:mercadovirtual/app/modules/login/login/login_page.dart';

import 'modules/home/home_controller.dart';
import 'modules/login/homelogin/homelogin_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CadastroController()),
        Bind((i) => LoginController()),
        Bind((i) => HomeloginController()),
        Bind((i) => HomeController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router("/", child: (_, args) => HomeloginPage()),
        Router("/Home", child: (_, args) => HomePage()),
        Router("/Cadastro", child: (_, args) => CadastroPage()),
        Router("/Login", child: (_, args) => LoginPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
