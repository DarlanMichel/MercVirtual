import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/login/store/login_store_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  LoginStoreController loginstore;

  setUp(() {
    loginstore = AppModule.to.get<LoginStoreController>();
  });

  group('LoginStoreController Test', () {
    test("First Test", () {
      expect(loginstore, isInstanceOf<LoginStoreController>());
    });

    test("Set Value", () {
      expect(loginstore.value, equals(0));
      loginstore.increment();
      expect(loginstore.value, equals(1));
    });
  });
}
