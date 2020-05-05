import 'package:mobx/mobx.dart';

part 'discount_card_controller.g.dart';

class DiscountCardController = _DiscountCardBase with _$DiscountCardController;

abstract class _DiscountCardBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
