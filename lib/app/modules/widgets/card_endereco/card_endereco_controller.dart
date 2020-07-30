import 'package:mobx/mobx.dart';

part 'card_endereco_controller.g.dart';

class CardEnderecoController = _CardEnderecoControllerBase
    with _$CardEnderecoController;

abstract class _CardEnderecoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
