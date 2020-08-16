import 'package:mercadovirtual/app/modules/home/models/pedido_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/pedido_repository.dart';
import 'package:mobx/mobx.dart';

part 'pedido_controller.g.dart';

class PedidoController = _PedidoControllerBase with _$PedidoController;

abstract class _PedidoControllerBase with Store {
  final PedidoRepository _repository;

  @observable
  ObservableStream<List<PedidoModel>> listaPedidos;

  _PedidoControllerBase(this._repository){
    getPedidos();
  }

  @action
  getPedidos(){
    listaPedidos = _repository.getPedido().asObservable();
  }
}
