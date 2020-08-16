import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/perfil/cadastro_perfil/cadastro_perfil_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository_interface.dart';
import 'cadastro_perfil_page.dart';

class CadastroPerfilModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PerfilController(i.get<PerfilRepository>())),
        Bind((i) => CadastroPerfilController(i.get<PerfilRepository>())),

        Bind<IPerfilRepository>((i) => PerfilRepository(i.get<HasuraConnect>())),

        Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CadastroPerfilPage()),
      ];

  static Inject get to => Inject<CadastroPerfilModule>.of();
}
