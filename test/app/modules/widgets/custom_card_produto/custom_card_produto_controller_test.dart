import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_card_produto/custom_card_produto_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomCardProdutoController customcardproduto;

  setUp(() {
    customcardproduto = AppModule.to.get<CustomCardProdutoController>();
  });

  group('CustomCardProdutoController Test', () {
    test("First Test", () {
      expect(customcardproduto, isInstanceOf<CustomCardProdutoController>());
    });

    test("Set Value", () {
      expect(customcardproduto.value, equals(0));
      customcardproduto.increment();
      expect(customcardproduto.value, equals(1));
    });
  });
}
