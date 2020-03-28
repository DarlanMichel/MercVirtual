import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_controller.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_page.dart';
import 'package:mercadovirtual/app/modules/login/homelogin/homelogin_controller.dart';
import 'package:mercadovirtual/app/modules/login/homelogin/homelogin_page.dart';
import 'package:mercadovirtual/app/modules/login/login/login_controller.dart';
import 'package:mercadovirtual/app/modules/login/login/login_page.dart';

class HomeloginModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeloginController()),
    Bind((i) => CadastroController()),
    Bind((i) => LoginController()),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => HomeloginPage()),
    Router("/Cadastro", child: (_, args) => CadastroPage()),
    Router("/Login", child: (_, args) => LoginPage()),
  ];

  static Inject get to => Inject<HomeloginModule>.of();
}
