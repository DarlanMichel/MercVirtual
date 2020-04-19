import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/home/widgets/custom_dialog_add_produto/custom_dialog_add_produto_widget.dart';

main() {
  testWidgets('CustomDialogAddProdutoWidget has message',
      (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(CustomDialogAddProdutoWidget()));
    final textFinder = find.text('CustomDialogAddProduto');
    expect(textFinder, findsOneWidget);
  });
}
