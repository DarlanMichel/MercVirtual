import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository_interface.dart';

class TabpageprodModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => ProductScreenController()),
    Bind((i) => SectionScreenController()),
    Bind((i) => TabpageprodController(i.get<ProdutoRepository>(), i.get<CategoriaRepository>(), 0 )),
    ///repositories
    Bind<ICategoriaRepository>((i) => CategoriaRepository(i.get<HasuraConnect>())),
    Bind<IProdutoRepository>((i) => ProdutoRepository(i.get<HasuraConnect>())),
    ///Outros
    Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<Router> get routers => [
    Router('/:categ', child: (_, args) => TabpageprodWidget(categoria: args.data)),
  ];

  static Inject get to => Inject<TabpageprodModule>.of();

  Widget get view => TabpageprodWidget();
}
