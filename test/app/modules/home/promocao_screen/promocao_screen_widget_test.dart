import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_widget.dart';

main() {
  testWidgets('PromocaoScreenWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(PromocaoScreenWidget()));
    final textFinder = find.text('PromocaoScreen');
    expect(textFinder, findsOneWidget);
  });
}
