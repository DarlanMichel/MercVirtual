import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/app_module.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/add_produto_carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository.dart';

class CarrinhoModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => CarrinhoController(i.get<AddProdutoCarrinhoRepository>(), i.get<CarrinhoRepository>())),

    Bind((i) => CarrinhoRepository(AppModule.to.get<HasuraConnect>())),
    Bind((i) => AddProdutoCarrinhoRepository(AppModule.to.get<HasuraConnect>()))
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => CarrinhoWidget())
  ];

  static Inject get to => Inject<CarrinhoModule>.of();

  Widget get view => CarrinhoWidget();
}
