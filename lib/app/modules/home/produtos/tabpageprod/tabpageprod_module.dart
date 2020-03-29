import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_widget.dart';

import '../../home_page.dart';

class TabpageprodModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => ProductScreenController()),
    Bind((i) => SectionScreenController()),
    Bind((i) => TabpageprodController()),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => TabpageprodWidget()),
    Router("/produto", module: ProductScreenModule()),
    Router("/secao", module: SectionScreenModule()),
  ];

  Widget get view => HomePage();
}
