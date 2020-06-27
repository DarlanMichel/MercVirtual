import 'package:dio/dio.dart';
import 'repositories/delete_produto_carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/update_carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/add_produto_carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/promocao_repository.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_widget.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_widget.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_widget.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_controller.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PerfilController()),
        Bind((i) => CarrinhoController(
              i.get<AddProdutoCarrinhoRepository>(),
              i.get<CarrinhoRepository>(),
              i.get<UpdateCarrinhoRepository>(),
              i.get<DeleteProdutoCarrinhoRepository>(),
            )),
        Bind((i) => PromocaoScreenController(i.get<PromocaoRepository>())),
        Bind((i) => TabpageprodController(
            i.get<ProdutoRepository>(), 0, i.get<CategoriaRepository>())),
        Bind((i) => HomeController()),

        ///repositories
        Bind((i) => PromocaoRepository(i.get<HasuraConnect>())),
        Bind((i) => AddProdutoCarrinhoRepository(i.get<HasuraConnect>())),
        Bind((i) => CarrinhoRepository(i.get<HasuraConnect>())),
        Bind((i) => UpdateCarrinhoRepository(i.get<HasuraConnect>())),
        Bind((i) => DeleteProdutoCarrinhoRepository(i.get<HasuraConnect>())),
        ///Outros
        Bind((i) =>
            HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
      ];

  @override
  List<Router> get routers => [
        Router("/", child: (_, args) => HomePage()),
        Router("/promocao", child: (_, args) => PromocaoScreenWidget()),
        Router("/produtos/:categ",
            child: (_, args) => TabpageprodWidget(categoria: args.data)),
        Router("/carrinho", child: (_, args) => CarrinhoWidget()),
        Router("/perfil", child: (_, args) => PerfilWidget()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
