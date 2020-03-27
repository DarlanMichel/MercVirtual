import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_card_promo/custom_card_promo_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomCardPromoController customcardpromo;

  setUp(() {
    customcardpromo = AppModule.to.get<CustomCardPromoController>();
  });

  group('CustomCardPromoController Test', () {
    test("First Test", () {
      expect(customcardpromo, isInstanceOf<CustomCardPromoController>());
    });

    test("Set Value", () {
      expect(customcardpromo.value, equals(0));
      customcardpromo.increment();
      expect(customcardpromo.value, equals(1));
    });
  });
}
