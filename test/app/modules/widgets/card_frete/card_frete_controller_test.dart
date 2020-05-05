import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/widgets/card_frete/card_frete_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CardFreteController cardfrete;

  setUp(() {
    cardfrete = AppModule.to.get<CardFreteController>();
  });

  group('CardFreteController Test', () {
    test("First Test", () {
      expect(cardfrete, isInstanceOf<CardFreteController>());
    });

    test("Set Value", () {
      expect(cardfrete.value, equals(0));
      cardfrete.increment();
      expect(cardfrete.value, equals(1));
    });
  });
}
