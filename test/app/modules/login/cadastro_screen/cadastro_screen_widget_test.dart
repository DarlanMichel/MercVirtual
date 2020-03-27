import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/login/cadastro_screen/cadastro_screen_widget.dart';

main() {
  testWidgets('CadastroScreenWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CadastroScreenWidget()));
    final textFinder = find.text('CadastroScreen');
    expect(textFinder, findsOneWidget);
  });
}
