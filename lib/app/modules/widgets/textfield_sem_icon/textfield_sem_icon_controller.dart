import 'package:mobx/mobx.dart';

part 'textfield_sem_icon_controller.g.dart';

class TextfieldSemIconController = _TextfieldSemIconControllerBase
    with _$TextfieldSemIconController;

abstract class _TextfieldSemIconControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
