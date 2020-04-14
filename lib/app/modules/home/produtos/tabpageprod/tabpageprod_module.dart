import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';

import '../../home_page.dart';

class TabpageprodModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => ProductScreenController(i.get<IProdutoRepository>(), i.args.params['categ'])),
    Bind((i) => SectionScreenController(i.get<CategoriaRepository>())),
    Bind((i) => TabpageprodController()),
    ///repositories
    Bind((i) => CategoriaRepository(i.get<HasuraConnect>())),
    Bind<IProdutoRepository>((i) => ProdutoRepository(i.get<HasuraConnect>())),
    ///Outros
    Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => TabpageprodWidget()),
    Router("/produto/:categ", child: (_, args) => ProductScreenWidget(categoria: args.data)),
    Router("/secao", child: (_, args) => SectionScreenWidget()),
  ];

  static Inject get to => Inject<TabpageprodModule>.of();

  Widget get view => TabpageprodWidget();
}
