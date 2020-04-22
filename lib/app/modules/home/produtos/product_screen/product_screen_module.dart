import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';

class ProductScreenModule extends ModuleWidget {

  @override
  List<Bind> get binds => [
    Bind((i) => ProductScreenController(i.get<ProdutoRepository>(), i.args.params['categ'])),
    ///repositories
    Bind((i) => ProdutoRepository(i.get<HasuraConnect>())),
    ///Outros
    Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<Router> get routers => [
    Router("/:categ", child: (_, args) => ProductScreenWidget(categoria: args.data)),
  ];

  static Inject get to => Inject<ProductScreenModule>.of();

  Widget get view => ProductScreenWidget();
}
