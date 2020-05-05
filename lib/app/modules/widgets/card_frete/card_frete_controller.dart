import 'package:mobx/mobx.dart';

part 'card_frete_controller.g.dart';

class CardFreteController = _CardFreteBase with _$CardFreteController;

abstract class _CardFreteBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
