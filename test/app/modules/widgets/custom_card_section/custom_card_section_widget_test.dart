import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_card_section/custom_card_section_widget.dart';

main() {
  testWidgets('CustomCardSectionWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomCardSectionWidget()));
    final textFinder = find.text('CustomCardSection');
    expect(textFinder, findsOneWidget);
  });
}
