import 'package:mobx/mobx.dart';

part 'custom_textfield_controller.g.dart';

class CustomTextfieldController = _CustomTextfieldBase
    with _$CustomTextfieldController;

abstract class _CustomTextfieldBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
