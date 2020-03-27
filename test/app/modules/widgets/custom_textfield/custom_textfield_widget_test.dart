import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_widget.dart';

main() {
  testWidgets('CustomTextfieldWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomTextfieldWidget()));
    final textFinder = find.text('CustomTextfield');
    expect(textFinder, findsOneWidget);
  });
}
