import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_module.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_controller.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_module.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_module.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PerfilController()),
        Bind((i) => CarrinhoController()),
        Bind((i) => PromocaoScreenController()),
        Bind((i) => TabpageprodController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router("/promocao", module: PromocaoScreenModule()),
        Router("/produto", module: TabpageprodModule()),
        Router("/carrinho", module: CarrinhoModule()),
        Router("/perfil", module: PerfilModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
