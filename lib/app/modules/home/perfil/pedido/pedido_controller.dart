import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/models/pedido_model.dart';
import 'package:mercadovirtual/app/modules/home/models/perfil_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/pedido_repository.dart';
import 'package:mobx/mobx.dart';

import '../perfil_controller.dart';

part 'pedido_controller.g.dart';

class PedidoController = _PedidoControllerBase with _$PedidoController;

abstract class _PedidoControllerBase with Store {
  final PedidoRepository _repository;

  @observable
  ObservableStream<List<PedidoModel>> listaPedidos;

  _PedidoControllerBase(this._repository);

  @observable
  String codCliente;

  @action
  getPedidos(){
    List<PerfilModel> listperfil = Modular.get<PerfilController>().listaNome.data;
    codCliente = listperfil[0].id;
    listaPedidos = _repository.getPedido(codCliente).asObservable();
  }

  Future save(int formaPagto, int idEnd, double valorTotal) =>  _repository.save(formaPagto, idEnd, valorTotal);
}
