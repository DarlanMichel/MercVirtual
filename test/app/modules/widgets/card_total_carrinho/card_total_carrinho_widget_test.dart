import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/widgets/card_total_carrinho/card_total_carrinho_widget.dart';

main() {
  testWidgets('CardTotalCarrinhoWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CardTotalCarrinhoWidget()));
    final textFinder = find.text('CardTotalCarrinho');
    expect(textFinder, findsOneWidget);
  });
}
