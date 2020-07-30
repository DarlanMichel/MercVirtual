import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/cadastro_endereco/cadastro_endereco_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/cadastro_endereco/cadastro_endereco_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/endereco_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/endereco_page.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository_interface.dart';

import '../home_page.dart';

class PerfilModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => PerfilController(i.get<PerfilRepository>())),
    Bind((i) => EnderecoController(i.get<EnderecoRepository>())),
    Bind((i) => CadastroEnderecoController(i.get<EnderecoRepository>())),
    ///repositories
    Bind<IPerfilRepository>((i) => PerfilRepository(i.get<HasuraConnect>())),
    Bind<IEnderecoRepository>((i) => EnderecoRepository(i.get<HasuraConnect>())),
    ///Outros
    Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => PerfilWidget()),
    Router('/endereco', child: (_, args) => EnderecoPage()),
    Router('/endereco/endcadastro', child: (_, args) => CadastroEnderecoPage())
  ];

  Widget get view => PerfilWidget();
}
