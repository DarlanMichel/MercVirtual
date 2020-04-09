import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';

main() {
  testWidgets('CustomRaisebuttonWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomRaisebuttonWidget()));
    final textFinder = find.text('CustomRaisebutton');
    expect(textFinder, findsOneWidget);
  });
}
