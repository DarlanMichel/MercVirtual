import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/widgets/card_produto_carrinho/card_produto_carrinho_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CardProdutoCarrinhoController cardprodutocarrinho;

  setUp(() {
    cardprodutocarrinho = AppModule.to.get<CardProdutoCarrinhoController>();
  });

  group('CardProdutoCarrinhoController Test', () {
    test("First Test", () {
      expect(
          cardprodutocarrinho, isInstanceOf<CardProdutoCarrinhoController>());
    });

    test("Set Value", () {
      expect(cardprodutocarrinho.value, equals(0));
      cardprodutocarrinho.increment();
      expect(cardprodutocarrinho.value, equals(1));
    });
  });
}
