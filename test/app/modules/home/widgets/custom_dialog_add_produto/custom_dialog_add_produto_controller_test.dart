import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_dialog_add_produto/custom_dialog_add_produto_controller.dart';

void main() {
  initModule(HomeModule());
  CustomDialogAddProdutoController customdialogaddproduto;

  setUp(() {
    customdialogaddproduto =
        HomeModule.to.get<CustomDialogAddProdutoController>();
  });

  group('CustomDialogAddProdutoController Test', () {
    test("First Test", () {
      expect(customdialogaddproduto,
          isInstanceOf<CustomDialogAddProdutoController>());
    });

    test("Set Value", () {
      expect(customdialogaddproduto.value, equals(0));
      customdialogaddproduto.increment();
      expect(customdialogaddproduto.value, equals(1));
    });
  });
}
