import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomTextfieldController customtextfield;

  setUp(() {
    customtextfield = AppModule.to.get<CustomTextfieldController>();
  });

  group('CustomTextfieldController Test', () {
    test("First Test", () {
      expect(customtextfield, isInstanceOf<CustomTextfieldController>());
    });

    test("Set Value", () {
      expect(customtextfield.value, equals(0));
      customtextfield.increment();
      expect(customtextfield.value, equals(1));
    });
  });
}
