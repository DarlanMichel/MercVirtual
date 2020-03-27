import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/login/cadastro_screen/cadastro_screen_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CadastroScreenController cadastroscreen;

  setUp(() {
    cadastroscreen = AppModule.to.get<CadastroScreenController>();
  });

  group('CadastroScreenController Test', () {
    test("First Test", () {
      expect(cadastroscreen, isInstanceOf<CadastroScreenController>());
    });

    test("Set Value", () {
      expect(cadastroscreen.value, equals(0));
      cadastroscreen.increment();
      expect(cadastroscreen.value, equals(1));
    });
  });
}
