import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/repositories/promocao_repository.dart';

class PromocaoScreenModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
    Bind((i) => PromocaoScreenController(i.get<PromocaoRepository>())),
    ///repositories
    Bind((i) => PromocaoRepository(i.get<HasuraConnect>())),
    ///Outros
    Bind((i) => HasuraConnect("https://mercadovirtual.herokuapp.com/v1/graphql"))
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => PromocaoScreenWidget())
  ];

  static Inject get to => Inject<PromocaoScreenModule>.of();

  Widget get view => PromocaoScreenWidget();
}
