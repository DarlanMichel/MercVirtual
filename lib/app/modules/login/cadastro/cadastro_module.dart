import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/home_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_controller.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_page.dart';
import 'package:mercadovirtual/app/modules/login/login/login_controller.dart';
import 'package:mercadovirtual/app/modules/login/login/login_page.dart';

class CadastroModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => CadastroController()),
    Bind((i) => HomeController()),
    Bind((i) => LoginController()),
  ];

  @override
  List<Router> get routers => [
    Router("/", child: (_, args) => CadastroPage()),
    Router("/Home", child: (_, args) => HomePage()),
    Router("/login", child: (_, args) => LoginPage()),
  ];

  static Inject get to => Inject<CadastroModule>.of();
}
