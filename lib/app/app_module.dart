import 'package:mercadovirtual/app/modules/home/perfil/endereco/cadastro_endereco/cadastro_endereco_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/cadastro_endereco/cadastro_endereco_module.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/endereco_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/endereco_module.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository_interface.dart';
import 'package:mercadovirtual/app/modules/login/store/login_store_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/card_produto_carrinho/card_produto_carrinho_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_module.dart';
import 'package:mercadovirtual/app/modules/shared/custom_hasura_connect.dart';
import 'package:mercadovirtual/app/modules/splash/splash_module.dart';
import 'package:mercadovirtual/app/modules/widgets/card_total_carrinho/card_total_carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/card_frete/card_frete_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/discount_card/discount_card_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_alertdialog/custom_alertdialog_controller.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';
import 'package:mercadovirtual/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/app_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'modules/home/carrinho/carrinho_module.dart';
import 'modules/home/perfil/perfil_module.dart';
import 'modules/home/produtos/tabpageprod/tabpageprod_module.dart';
import 'modules/home/promocao_screen/promocao_screen_module.dart';
import 'modules/home/repositories/promocao_repository.dart';
import 'modules/login/homelogin/homelogin_module.dart';
import 'modules/login/login/login_module.dart';
import 'modules/widgets/custom_dialog_excluir/custom_dialog_excluir_controller.dart';

class AppModule extends MainModule {
  final SharedPreferences shared;
  AppModule(this.shared);

  @override
  List<Bind> get binds => [
        Bind((i) => CustomDialogExcluirController()),
        Bind((i) => LoginStoreController()),
        Bind((i) => CardProdutoCarrinhoController()),
        Bind((i) => CardTotalCarrinhoController()),
        Bind((i) => CardFreteController()),
        Bind((i) => DiscountCardController()),
        Bind((i) => CustomAlertdialogController()),
        Bind((i) => AppController()),
        Bind((i) => PromocaoScreenController(i.get<PromocaoRepository>())),
        Bind((i) => EnderecoController(i.get<EnderecoRepository>())),
        Bind((i) => CadastroEnderecoController(i.get<EnderecoRepository>())),
        ///repositories
        Bind((i) => PromocaoRepository(i.get<HasuraConnect>())),
        Bind<IEnderecoRepository>((i)=> EnderecoRepository(i.get<HasuraConnect>())),
        ///Outros
        Bind((i) => CustomHasuraConnect.getConnect(i.get<FirebaseAuth>())),
        Bind((i) => shared),
        Bind((i) => FirebaseAuth.instance),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: SplashModule()),
        Router("/homelogin", module: HomeloginModule()),
        Router("/cadastro", module: CadastroModule()),
        Router("/login", module: LoginModule()),
        Router("/Home", module: HomeModule()),
        //Router("/Home/promocao", module: PromocaoScreenModule()),
        //Router("/Home/produtos/:categ", module: TabpageprodModule()),
        //Router("/Home/carrinho", module: CarrinhoModule()),
        //Router("/Home/perfil", module: PerfilModule()),
        //Router("/Home/perfil/endereco", module: EnderecoModule()),
        Router("/Home/perfil/endereco/endcadastro", module: CadastroEnderecoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
