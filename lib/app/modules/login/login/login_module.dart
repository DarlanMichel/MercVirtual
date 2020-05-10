import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/home_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/login/login/login_controller.dart';
import 'package:mercadovirtual/app/modules/login/login/login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeController()),
    Bind((i) => LoginController()),
  ];

  @override
  List<Router> get routers => [
    Router("/", child: (_, args) => LoginPage()),
    Router("/Home", child: (_, args) => HomePage()),
  ];

  static Inject get to => Inject<LoginModule>.of();
}
