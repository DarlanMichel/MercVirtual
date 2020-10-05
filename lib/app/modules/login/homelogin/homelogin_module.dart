import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository_interface.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_controller.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_page.dart';
import 'package:mercadovirtual/app/modules/login/homelogin/homelogin_controller.dart';
import 'package:mercadovirtual/app/modules/login/homelogin/homelogin_page.dart';
import 'package:mercadovirtual/app/modules/login/login/login_controller.dart';
import 'package:mercadovirtual/app/modules/login/login/login_page.dart';
import 'package:mercadovirtual/app/modules/login/store/login_store_controller.dart';

class HomeloginModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeloginController()),
    Bind((i) => CadastroController(i.get<PerfilRepository>(), i.get<LoginStoreController>())),
    Bind((i) => LoginController(i.get<LoginStoreController>(), i.get<PerfilRepository>(),)),
    Bind<IPerfilRepository>((i) => PerfilRepository(i.get<HasuraConnect>())),

    Bind((i) =>
        HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => HomeloginPage()),
    ModularRouter("/cadastro", child: (_, args) => CadastroPage()),
    ModularRouter("/login", child: (_, args) => LoginPage()),
  ];

  static Inject get to => Inject<HomeloginModule>.of();
}
