import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/login/login_screen/login_screen_widget.dart';

main() {
  testWidgets('LoginScreenWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(LoginScreenWidget()));
    final textFinder = find.text('LoginScreen');
    expect(textFinder, findsOneWidget);
  });
}
