import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_widget.dart';

class PromocaoScreenModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => PromocaoScreenController())
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => PromocaoScreenWidget())
  ];

  Widget get view => HomePage();
}
