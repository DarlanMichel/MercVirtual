import 'package:mobx/mobx.dart';

part 'homelogin_controller.g.dart';

class HomeloginController = _HomeloginControllerBase with _$HomeloginController;

abstract class _HomeloginControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
