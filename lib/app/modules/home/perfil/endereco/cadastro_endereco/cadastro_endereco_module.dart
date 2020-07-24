import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/cadastro_endereco/cadastro_endereco_controller.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository_interface.dart';

import 'cadastro_endereco_page.dart';

class CadastroEnderecoModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => CadastroEnderecoController(i.get<EnderecoRepository>())),
    ///repositories
    Bind<IEnderecoRepository>((i) => EnderecoRepository(i.get<HasuraConnect>())),
    ///Outros
    Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
      ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => CadastroEnderecoPage()),
  ];

  static Inject get to => Inject<CadastroEnderecoModule>.of();
}
