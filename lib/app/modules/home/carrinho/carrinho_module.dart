import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/app_module.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/desconto_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/desconto_repository_interface.dart';

class CarrinhoModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => CarrinhoController(i.get<CarrinhoRepository>(), i.get<DescontoRepository>())),

    Bind<ICarrinhoRepository>((i) => CarrinhoRepository(AppModule.to.get<HasuraConnect>())),
    Bind<IDescontoRepository>((i) => DescontoRepository(AppModule.to.get<HasuraConnect>())),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => CarrinhoWidget())
  ];

  static Inject get to => Inject<CarrinhoModule>.of();

  Widget get view => CarrinhoWidget();
}
