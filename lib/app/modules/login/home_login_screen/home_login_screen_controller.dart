import 'package:mobx/mobx.dart';

part 'home_login_screen_controller.g.dart';

class HomeLoginScreenController = _HomeLoginScreenBase
    with _$HomeLoginScreenController;

abstract class _HomeLoginScreenBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
