import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_alertdialog/custom_alertdialog_widget.dart';

main() {
  testWidgets('CustomAlertdialogWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomAlertdialogWidget()));
    final textFinder = find.text('CustomAlertdialog');
    expect(textFinder, findsOneWidget);
  });
}
