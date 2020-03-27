import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/login/home_login_screen/home_login_screen_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  HomeLoginScreenController homeloginscreen;

  setUp(() {
    homeloginscreen = AppModule.to.get<HomeLoginScreenController>();
  });

  group('HomeLoginScreenController Test', () {
    test("First Test", () {
      expect(homeloginscreen, isInstanceOf<HomeLoginScreenController>());
    });

    test("Set Value", () {
      expect(homeloginscreen.value, equals(0));
      homeloginscreen.increment();
      expect(homeloginscreen.value, equals(1));
    });
  });
}
