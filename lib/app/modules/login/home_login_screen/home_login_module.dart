import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_controller.dart';
import 'package:mercadovirtual/app/modules/login/home_login_screen/home_login_screen_widget.dart';
import 'home_login_screen_controller.dart';

class HomeLoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => ProductScreenController()),
    Bind((i) => SectionScreenController()),
    Bind((i) => PromocaoScreenController()),
    Bind((i) => HomeLoginScreenController()),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomeLoginScreen()),
  ];

  static Inject get to => Inject<HomeLoginModule>.of();
}