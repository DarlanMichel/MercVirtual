import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_widget.dart';

main() {
  testWidgets('SectionScreenWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SectionScreenWidget()));
    final textFinder = find.text('SectionScreen');
    expect(textFinder, findsOneWidget);
  });
}
