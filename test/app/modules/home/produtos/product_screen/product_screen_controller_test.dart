import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  ProductScreenController productscreen;

  setUp(() {
    productscreen = HomeModule.to.get<ProductScreenController>();
  });

  group('ProductScreenController Test', () {
    test("First Test", () {
      expect(productscreen, isInstanceOf<ProductScreenController>());
    });

    test("Set Value", () {
      expect(productscreen.value, equals(0));
      productscreen.increment();
      expect(productscreen.value, equals(1));
    });
  });
}
