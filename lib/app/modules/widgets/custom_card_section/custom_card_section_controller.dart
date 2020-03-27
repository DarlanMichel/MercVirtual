import 'package:mobx/mobx.dart';

part 'custom_card_section_controller.g.dart';

class CustomCardSectionController = _CustomCardSectionBase
    with _$CustomCardSectionController;

abstract class _CustomCardSectionBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
