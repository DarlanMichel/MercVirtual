import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_card_section/custom_card_section_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomCardSectionController customcardsection;

  setUp(() {
    customcardsection = AppModule.to.get<CustomCardSectionController>();
  });

  group('CustomCardSectionController Test', () {
    test("First Test", () {
      expect(customcardsection, isInstanceOf<CustomCardSectionController>());
    });

    test("Set Value", () {
      expect(customcardsection.value, equals(0));
      customcardsection.increment();
      expect(customcardsection.value, equals(1));
    });
  });
}
