import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  CarrinhoController carrinho;

  setUp(() {
    carrinho = HomeModule.to.get<CarrinhoController>();
  });

  group('CarrinhoController Test', () {
    test("First Test", () {
      expect(carrinho, isInstanceOf<CarrinhoController>());
    });

    test("Set Value", () {
      expect(carrinho.value, equals(0));
      carrinho.increment();
      expect(carrinho.value, equals(1));
    });
  });
}
