import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/home_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository_interface.dart';
import 'package:mercadovirtual/app/modules/login/login/login_controller.dart';
import 'package:mercadovirtual/app/modules/login/login/login_page.dart';
import 'package:mercadovirtual/app/modules/login/store/login_store_controller.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => HomeController()),
    Bind((i) => LoginController(i.get<LoginStoreController>(), i.get<PerfilRepository>(),)),
    Bind<IPerfilRepository>((i) => PerfilRepository(i.get<HasuraConnect>())),

    Bind((i) =>
        HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<Router> get routers => [
    Router("/", child: (_, args) => LoginPage()),
    Router("/Home", child: (_, args) => HomePage()),
  ];

  static Inject get to => Inject<LoginModule>.of();
}
