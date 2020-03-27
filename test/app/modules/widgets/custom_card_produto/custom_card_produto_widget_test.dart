import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_card_produto/custom_card_produto_widget.dart';

main() {
  testWidgets('CustomCardProdutoWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomCardProdutoWidget()));
    final textFinder = find.text('CustomCardProduto');
    expect(textFinder, findsOneWidget);
  });
}
