import 'package:mobx/mobx.dart';

part 'custom_raisebutton_controller.g.dart';

class CustomRaisebuttonController = _CustomRaisebuttonBase
    with _$CustomRaisebuttonController;

abstract class _CustomRaisebuttonBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
