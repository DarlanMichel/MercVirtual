import 'package:mobx/mobx.dart';

part 'promocao_screen_controller.g.dart';

class PromocaoScreenController = _PromocaoScreenBase
    with _$PromocaoScreenController;

abstract class _PromocaoScreenBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
