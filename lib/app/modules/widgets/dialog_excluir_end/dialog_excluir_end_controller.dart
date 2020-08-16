import 'package:mobx/mobx.dart';

part 'dialog_excluir_end_controller.g.dart';

class DialogExcluirEndController = _DialogExcluirEndControllerBase
    with _$DialogExcluirEndController;

abstract class _DialogExcluirEndControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
