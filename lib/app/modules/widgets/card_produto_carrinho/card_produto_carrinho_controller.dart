import 'package:mobx/mobx.dart';

part 'card_produto_carrinho_controller.g.dart';

class CardProdutoCarrinhoController = _CardProdutoCarrinhoBase
    with _$CardProdutoCarrinhoController;

abstract class _CardProdutoCarrinhoBase with Store {
  @observable
  int value = 1;

  @action
  void increment() {
    value++;
  }
}
