import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository.dart';
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
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PerfilController()),
        Bind((i) => CarrinhoController()),
        Bind((i) => PromocaoScreenController()),
        Bind((i) => TabpageprodController()),
        Bind((i) => HomeController()),
//        Bind((i) => ProductScreenController(i.get<ProdutoRepository>())),
//        Bind((i) => SectionScreenController(i.get<CategoriaRepository>())),
//        ///repositories
//        Bind((i) => CategoriaRepository(i.get<HasuraConnect>())),
//        Bind((i) => ProdutoRepository(i.get<HasuraConnect>())),
//        ///Outros
//        Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router("/promocao", module: PromocaoScreenModule()),
        Router("/categoria", module: TabpageprodModule()),
        Router("/carrinho", module: CarrinhoModule()),
        Router("/perfil", module: PerfilModule()),
//        Router("/categoria/produto/:categoria", child: (_, args) => ProductScreenWidget(categoria: args.params['categoria'])),
//        Router("/categoria/secao", child: (_, args) => SectionScreenWidget()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
