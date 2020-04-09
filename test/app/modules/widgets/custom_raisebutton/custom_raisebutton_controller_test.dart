import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomRaisebuttonController customraisebutton;

  setUp(() {
    customraisebutton = AppModule.to.get<CustomRaisebuttonController>();
  });

  group('CustomRaisebuttonController Test', () {
    test("First Test", () {
      expect(customraisebutton, isInstanceOf<CustomRaisebuttonController>());
    });

    test("Set Value", () {
      expect(customraisebutton.value, equals(0));
      customraisebutton.increment();
      expect(customraisebutton.value, equals(1));
    });
  });
}
