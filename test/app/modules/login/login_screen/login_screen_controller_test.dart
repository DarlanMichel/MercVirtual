import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/login/login_screen/login_screen_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  LoginScreenController loginscreen;

  setUp(() {
    loginscreen = AppModule.to.get<LoginScreenController>();
  });

  group('LoginScreenController Test', () {
    test("First Test", () {
      expect(loginscreen, isInstanceOf<LoginScreenController>());
    });

    test("Set Value", () {
      expect(loginscreen.value, equals(0));
      loginscreen.increment();
      expect(loginscreen.value, equals(1));
    });
  });
}
