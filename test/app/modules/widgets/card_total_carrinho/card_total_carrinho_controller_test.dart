import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/widgets/card_total_carrinho/card_total_carrinho_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CardTotalCarrinhoController cardtotalcarrinho;

  setUp(() {
    cardtotalcarrinho = AppModule.to.get<CardTotalCarrinhoController>();
  });

  group('CardTotalCarrinhoController Test', () {
    test("First Test", () {
      expect(cardtotalcarrinho, isInstanceOf<CardTotalCarrinhoController>());
    });

    test("Set Value", () {
      expect(cardtotalcarrinho.value, equals(0));
      cardtotalcarrinho.increment();
      expect(cardtotalcarrinho.value, equals(1));
    });
  });
}
