import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pagamento/pagamento_controller.dart';
import 'package:mercadovirtual/app/modules/home/repositories/formaPagto_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/formaPagto_repository_interface.dart';
import 'pagamento_page.dart';

class PagamentoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PagamentoController(i.get<FormaPagtoRepository>())),

        Bind<IFormaPagtoRepository>((i) => FormaPagtoRepository(i.get<HasuraConnect>())),
        ///Outros
        Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PagamentoPage()),
      ];

  static Inject get to => Inject<PagamentoModule>.of();
}
