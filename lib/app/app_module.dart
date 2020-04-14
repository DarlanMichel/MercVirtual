import 'package:mercadovirtual/app/modules/home/home_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_module.dart';
import 'package:mercadovirtual/app/modules/login/homelogin/homelogin_controller.dart';
import 'package:mercadovirtual/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/app_widget.dart';
import 'modules/home/carrinho/carrinho_module.dart';
import 'modules/home/home_controller.dart';
import 'modules/home/perfil/perfil_module.dart';
import 'modules/home/produtos/tabpageprod/tabpageprod_module.dart';
import 'modules/home/promocao_screen/promocao_screen_module.dart';
import 'modules/login/homelogin/homelogin_module.dart';


class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeloginModule()),
        Router("/Home", module: HomeModule()),
        Router("/Home/promocao", module: PromocaoScreenModule()),
        Router("/Home/categoria", module: TabpageprodModule()),
        Router("/Home/carrinho", module: CarrinhoModule()),
        Router("/Home/perfil", module: PerfilModule()),
        Router("/Home/categoria/produto/:categ", module: ProductScreenModule()),
        Router("/Home/categoria/secao", module: SectionScreenModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
