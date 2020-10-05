import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';

class ProductScreenModule extends WidgetModule {

  @override
  List<Bind> get binds => [
    Bind((i) => ProductScreenController()),
    ///repositories
    Bind((i) => ProdutoRepository(i.get<HasuraConnect>())),
    ///Outros
    Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter("/:categ", child: (_, args) => ProductScreenWidget()),
  ];

  static Inject get to => Inject<ProductScreenModule>.of();

  Widget get view => ProductScreenWidget();
}
