import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_module.dart';

class TabpageprodWidget extends StatefulWidget {
  @override
  _TabpageprodWidgetState createState() => _TabpageprodWidgetState();
}

class _TabpageprodWidgetState extends State<TabpageprodWidget> {
  final PageController _pageController = PageController( initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: <Widget>[
//            SectionScreenWidget(),
//            ProductScreenWidget()
            RouterOutlet(
              module: SectionScreenModule(),
            ),
            RouterOutlet(
              module: ProductScreenModule(),
            ),
          ],
        ),
      ),
    );
  }
}

