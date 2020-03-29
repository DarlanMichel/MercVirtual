import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_widget.dart';

main() {
  testWidgets('TabpageprodWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TabpageprodWidget()));
    final textFinder = find.text('Tabpageprod');
    expect(textFinder, findsOneWidget);
  });
}
