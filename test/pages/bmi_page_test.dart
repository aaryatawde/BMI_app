import 'package:bmi_app/pages/bmi_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
      'Given weightInfoCard When user click + button Then weight increment by 1',
      (tester) async {
    //Arrange
    await tester.pumpWidget(CupertinoApp(
      home: BMIPage(),
    ));
    var _weightIncrementButton = find.byKey(
      Key('weight_plus'),
    );

    ///act
    await tester.tap(_weightIncrementButton);
    await tester.pump();

    ///assert
    var _text = find.text('161');
    expect(_text, findsOneWidget);
  });
}
