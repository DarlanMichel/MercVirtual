import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_widget.dart';

import '../home_page.dart';

class PerfilModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => PerfilController())
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => PerfilWidget())
  ];

  Widget get view => PerfilWidget();
}
