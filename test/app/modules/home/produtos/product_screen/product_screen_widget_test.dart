import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_widget.dart';

main() {
  testWidgets('ProductScreenWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ProductScreenWidget()));
    final textFinder = find.text('ProductScreen');
    expect(textFinder, findsOneWidget);
  });
}
