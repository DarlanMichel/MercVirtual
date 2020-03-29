import 'package:mobx/mobx.dart';

part 'tabpageprod_controller.g.dart';

class TabpageprodController = _TabpageprodBase with _$TabpageprodController;

abstract class _TabpageprodBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
