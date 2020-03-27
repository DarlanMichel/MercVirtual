import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/login/home_login_screen/home_login_screen_widget.dart';

main() {
  testWidgets('HomeLoginScreenWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomeLoginScreen()));
    final textFinder = find.text('HomeLoginScreen');
    expect(textFinder, findsOneWidget);
  });
}
