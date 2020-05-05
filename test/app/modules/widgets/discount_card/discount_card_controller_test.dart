import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/widgets/discount_card/discount_card_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  DiscountCardController discountcard;

  setUp(() {
    discountcard = AppModule.to.get<DiscountCardController>();
  });

  group('DiscountCardController Test', () {
    test("First Test", () {
      expect(discountcard, isInstanceOf<DiscountCardController>());
    });

    test("Set Value", () {
      expect(discountcard.value, equals(0));
      discountcard.increment();
      expect(discountcard.value, equals(1));
    });
  });
}
