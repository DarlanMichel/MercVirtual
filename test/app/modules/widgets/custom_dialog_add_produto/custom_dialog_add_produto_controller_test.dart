import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_dialog_add_produto/custom_dialog_add_produto_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomDialogAddProdutoController customdialogaddproduto;

  setUp(() {
    customdialogaddproduto =
        AppModule.to.get<CustomDialogAddProdutoController>();
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
