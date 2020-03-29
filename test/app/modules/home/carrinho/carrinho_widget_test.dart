import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_widget.dart';

main() {
  testWidgets('CarrinhoWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CarrinhoWidget()));
    final textFinder = find.text('Carrinho');
    expect(textFinder, findsOneWidget);
  });
}
