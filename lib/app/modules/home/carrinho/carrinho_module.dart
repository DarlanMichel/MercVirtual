import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_widget.dart';

import '../home_page.dart';

class CarrinhoModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => CarrinhoController())
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => CarrinhoWidget())
  ];

  Widget get view => HomePage();
}
