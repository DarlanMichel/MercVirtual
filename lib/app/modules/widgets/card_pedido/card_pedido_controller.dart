import 'package:mobx/mobx.dart';

part 'card_pedido_controller.g.dart';

class CardPedidoController = _CardPedidoControllerBase
    with _$CardPedidoController;

abstract class _CardPedidoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
