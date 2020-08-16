import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pagamento/pagamento_controller.dart';
import 'pagamento_page.dart';

class PagamentoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PagamentoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PagamentoPage()),
      ];

  static Inject get to => Inject<PagamentoModule>.of();
}
