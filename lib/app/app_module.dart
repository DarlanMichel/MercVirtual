import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/login/homelogin/homelogin_controller.dart';
import 'package:mercadovirtual/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/app_widget.dart';
import 'modules/home/home_controller.dart';
import 'modules/login/homelogin/homelogin_module.dart';


class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeloginController()),
        Bind((i) => HomeController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeloginModule()),
        Router("/Home", child: (_, args) => HomePage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
