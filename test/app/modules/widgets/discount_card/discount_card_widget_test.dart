import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/widgets/discount_card/discount_card_widget.dart';

main() {
  testWidgets('DiscountCardWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DiscountCardWidget()));
    final textFinder = find.text('DiscountCard');
    expect(textFinder, findsOneWidget);
  });
}
