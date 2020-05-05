import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_alertdialog/custom_alertdialog_controller.dart';
import 'package:mercadovirtual/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomAlertdialogController customalertdialog;

  setUp(() {
    customalertdialog = AppModule.to.get<CustomAlertdialogController>();
  });

  group('CustomAlertdialogController Test', () {
    test("First Test", () {
      expect(customalertdialog, isInstanceOf<CustomAlertdialogController>());
    });

    test("Set Value", () {
      expect(customalertdialog.value, equals(0));
      customalertdialog.increment();
      expect(customalertdialog.value, equals(1));
    });
  });
}
