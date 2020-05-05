import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/widgets/card_frete/card_frete_widget.dart';

main() {
  testWidgets('CardFreteWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CardFreteWidget()));
    final textFinder = find.text('CardFrete');
    expect(textFinder, findsOneWidget);
  });
}
