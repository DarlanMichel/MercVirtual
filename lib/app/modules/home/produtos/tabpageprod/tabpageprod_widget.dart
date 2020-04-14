import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_module.dart';

class TabpageprodWidget extends StatefulWidget {
  final String title;
  const TabpageprodWidget({Key key, this.title = "categoria"}) : super(key: key);
  @override
  _TabpageprodWidgetState createState() => _TabpageprodWidgetState();
}

class _TabpageprodWidgetState extends ModularState<TabpageprodWidget, TabpageprodController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [
          RouterOutlet(
            module: SectionScreenModule(),
          ),
          RouterOutlet(
            module: ProductScreenModule(),
          )
        ],
      ),
    );
  }
}

