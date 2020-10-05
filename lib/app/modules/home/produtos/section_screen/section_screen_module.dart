import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository.dart';

class SectionScreenModule extends WidgetModule {
  @override
  List<Bind> get binds => [
    Bind((i) => SectionScreenController()),
    ///repositories
    Bind((i) => CategoriaRepository(i.get<HasuraConnect>())),
    ///Outros
    Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter('/', child: (_, args) => SectionScreenWidget()),
    ModularRouter("/produto/:categ", child: (_, args) => ProductScreenWidget(categoria: args.data)),
  ];

  static Inject get to => Inject<SectionScreenModule>.of();

  Widget get view => SectionScreenWidget();
}
