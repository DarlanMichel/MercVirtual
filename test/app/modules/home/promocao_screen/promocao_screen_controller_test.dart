import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  PromocaoScreenController promocaoscreen;

  setUp(() {
    promocaoscreen = HomeModule.to.get<PromocaoScreenController>();
  });

  group('PromocaoScreenController Test', () {
    test("First Test", () {
      expect(promocaoscreen, isInstanceOf<PromocaoScreenController>());
    });

  });
}
