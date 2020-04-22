import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  TabpageprodController tabpageprod;

  setUp(() {
    tabpageprod = HomeModule.to.get<TabpageprodController>();
  });

  group('TabpageprodController Test', () {
    test("First Test", () {
      expect(tabpageprod, isInstanceOf<TabpageprodController>());
    });

  });
}
