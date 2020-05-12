import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/widgets/card_produto_carrinho/card_produto_carrinho_widget.dart';

main() {
  testWidgets('CardProdutoCarrinhoWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CardProdutoCarrinhoWidget()));
    final textFinder = find.text('CardProdutoCarrinho');
    expect(textFinder, findsOneWidget);
  });
}
