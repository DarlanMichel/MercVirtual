import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/home_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository_interface.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_controller.dart';
import 'package:mercadovirtual/app/modules/login/cadastro/cadastro_page.dart';
import 'package:mercadovirtual/app/modules/login/login/login_controller.dart';
import 'package:mercadovirtual/app/modules/login/login/login_page.dart';
import 'package:mercadovirtual/app/modules/login/store/login_store_controller.dart';

class CadastroModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => CadastroController(i.get<PerfilRepository>(), i.get<LoginStoreController>())),
    Bind((i) => HomeController()),
    Bind((i) => LoginController(i.get<LoginStoreController>(), i.get<PerfilRepository>(),)),

    Bind<IPerfilRepository>((i) => PerfilRepository(i.get<HasuraConnect>())),

    Bind((i) =>
        HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<Router> get routers => [
    Router("/", child: (_, args) => CadastroPage()),
    Router("/Home", child: (_, args) => HomePage()),
    Router("/login", child: (_, args) => LoginPage()),
  ];

  static Inject get to => Inject<CadastroModule>.of();
}
