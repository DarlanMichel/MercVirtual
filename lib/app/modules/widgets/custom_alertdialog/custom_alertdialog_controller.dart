import 'package:mobx/mobx.dart';

part 'custom_alertdialog_controller.g.dart';

class CustomAlertdialogController = _CustomAlertdialogBase
    with _$CustomAlertdialogController;

abstract class _CustomAlertdialogBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
