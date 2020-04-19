import 'package:mobx/mobx.dart';

part 'custom_dialog_add_produto_controller.g.dart';

class CustomDialogAddProdutoController = _CustomDialogAddProdutoBase
    with _$CustomDialogAddProdutoController;

abstract class _CustomDialogAddProdutoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
