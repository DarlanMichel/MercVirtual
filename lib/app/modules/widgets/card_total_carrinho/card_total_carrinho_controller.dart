import 'package:mobx/mobx.dart';

part 'card_total_carrinho_controller.g.dart';

class CardTotalCarrinhoController = _CardTotalCarrinhoBase
    with _$CardTotalCarrinhoController;

abstract class _CardTotalCarrinhoBase with Store {
  @observable
  double subtotal = 0;

  @action
  void sum() {
    subtotal = 0;
  }
}
