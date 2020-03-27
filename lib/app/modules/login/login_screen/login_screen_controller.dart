import 'package:mobx/mobx.dart';

part 'login_screen_controller.g.dart';

class LoginScreenController = _LoginScreenBase with _$LoginScreenController;

abstract class _LoginScreenBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
