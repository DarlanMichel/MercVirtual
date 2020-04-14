import 'package:mobx/mobx.dart';

part 'custom_card_produto_controller.g.dart';

class CustomCardProdutoController = _CustomCardProdutoBase
    with _$CustomCardProdutoController;

abstract class _CustomCardProdutoBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
