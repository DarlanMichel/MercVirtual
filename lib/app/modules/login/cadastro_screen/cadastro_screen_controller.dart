import 'package:mobx/mobx.dart';

part 'cadastro_screen_controller.g.dart';

class CadastroScreenController = _CadastroScreenBase
    with _$CadastroScreenController;

abstract class _CadastroScreenBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
