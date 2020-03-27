import 'package:mobx/mobx.dart';

part 'custom_card_promo_controller.g.dart';

class CustomCardPromoController = _CustomCardPromoBase
    with _$CustomCardPromoController;

abstract class _CustomCardPromoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
