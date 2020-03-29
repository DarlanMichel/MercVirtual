import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/home/perfil/perfil_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  PerfilController perfil;

  setUp(() {
    perfil = HomeModule.to.get<PerfilController>();
  });

  group('PerfilController Test', () {
    test("First Test", () {
      expect(perfil, isInstanceOf<PerfilController>());
    });

    test("Set Value", () {
      expect(perfil.value, equals(0));
      perfil.increment();
      expect(perfil.value, equals(1));
    });
  });
}
