import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pedido/pedido_controller.dart';
import 'package:mercadovirtual/app/modules/home/repositories/pedido_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/pedido_repository_interface.dart';
import 'pedido_page.dart';

class PedidoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PedidoController(i.get<PedidoRepository>())),
        Bind<IPedidoRepository>((i) => PedidoRepository(i.get<HasuraConnect>())),
        ///Outros
        Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
      ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => PedidoPage()),
      ];

  static Inject get to => Inject<PedidoModule>.of();
}
