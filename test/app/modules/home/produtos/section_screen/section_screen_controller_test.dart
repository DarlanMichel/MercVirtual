import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  SectionScreenController sectionscreen;

  setUp(() {
    sectionscreen = HomeModule.to.get<SectionScreenController>();
  });

  group('SectionScreenController Test', () {
    test("First Test", () {
      expect(sectionscreen, isInstanceOf<SectionScreenController>());
    });

    test("Set Value", () {
      expect(sectionscreen.value, equals(0));
      sectionscreen.increment();
      expect(sectionscreen.value, equals(1));
    });
  });
}
