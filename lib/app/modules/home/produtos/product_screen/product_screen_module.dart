import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_widget.dart';

class ProductScreenModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => ProductScreenController())
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => ProductScreenWidget(),),
  ];

  Widget get view => TabpageprodWidget();
}
