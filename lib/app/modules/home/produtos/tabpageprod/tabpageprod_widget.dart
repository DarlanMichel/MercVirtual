import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_widget.dart';

class TabpageprodWidget extends StatefulWidget {
  final String title;
  final int categoria;
  const TabpageprodWidget({Key key, this.title = "categoria",@required this.categoria}) : super(key: key);
  @override
  _TabpageprodWidgetState createState() => _TabpageprodWidgetState();
}

class _TabpageprodWidgetState extends ModularState<TabpageprodWidget, TabpageprodController> {
  @override
  void initState() {
    controller.setPesquisa;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomTextfieldWidget(
            text: "Procurar",
            pass: false,
            keyboard: TextInputType.text,
            icon: Icons.search,
            change: controller.setPesquisa,
          ),
          SizedBox(
            height: 5,
          ),
          SectionScreenWidget(),
          SizedBox(
            height: 5,
          ),
          ProductScreenWidget(),
        ],
      ),
    );
  }
}

