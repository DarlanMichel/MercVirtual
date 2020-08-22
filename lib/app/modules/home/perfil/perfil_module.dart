import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/perfil/cadastro_perfil/cadastro_perfil_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/cadastro_endereco/cadastro_endereco_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/cadastro_endereco/cadastro_endereco_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/endereco_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/endereco_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pagamento/pagamento_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pagamento/pagamento_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pedido/pedido_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pedido/pedido_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/formaPagto_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/formaPagto_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/pedido_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/pedido_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository_interface.dart';

import 'cadastro_perfil/cadastro_perfil_controller.dart';

class PerfilModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => PerfilController(i.get<PerfilRepository>())),
    Bind((i) => EnderecoController(i.get<EnderecoRepository>())),
    Bind((i) => CadastroEnderecoController(i.get<EnderecoRepository>())),
    Bind((i) => PedidoController(i.get<PedidoRepository>())),
    Bind((i) => CadastroPerfilController(i.get<PerfilRepository>())),
    Bind((i) => PagamentoController(i.get<FormaPagtoRepository>())),
    ///repositories
    Bind<IPerfilRepository>((i) => PerfilRepository(i.get<HasuraConnect>())),
    Bind<IEnderecoRepository>((i) => EnderecoRepository(i.get<HasuraConnect>())),
    Bind<IPedidoRepository>((i) => PedidoRepository(i.get<HasuraConnect>())),
    Bind<IFormaPagtoRepository>((i) => FormaPagtoRepository(i.get<HasuraConnect>())),
    ///Outros
    Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => PerfilWidget()),
    Router('/endereco', child: (_, args) => EnderecoPage()),
    Router('/endereco/endcadastro', child: (_, args) => CadastroEnderecoPage()),
    Router('/pedidos', child: (_, args) => PedidoPage()),
    Router('/cadastroperfil', child: (_, args) => CadastroPerfilPage()),
    Router('/pagamento', child: (_, args) => PagamentoPage()),
  ];

  Widget get view => PerfilWidget();
}
