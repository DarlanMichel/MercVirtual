import 'package:mobx/mobx.dart';

part 'card_total_carrinho_controller.g.dart';

class CardTotalCarrinhoController = _CardTotalCarrinhoBase
    with _$CardTotalCarrinhoController;

abstract class _CardTotalCarrinhoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
