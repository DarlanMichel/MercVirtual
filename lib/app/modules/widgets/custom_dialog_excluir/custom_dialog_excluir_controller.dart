import 'package:mobx/mobx.dart';

part 'custom_dialog_excluir_controller.g.dart';

class CustomDialogExcluirController = _CustomDialogExcluirControllerBase
    with _$CustomDialogExcluirController;

abstract class _CustomDialogExcluirControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
