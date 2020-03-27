import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_card_promo/custom_card_promo_widget.dart';

main() {
  testWidgets('CustomCardPromoWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomCardPromoWidget()));
    final textFinder = find.text('CustomCardPromo');
    expect(textFinder, findsOneWidget);
  });
}
