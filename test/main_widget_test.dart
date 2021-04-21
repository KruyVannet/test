import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wiget_test/main.dart';

void main(){
  testWidgets("Hello", (WidgetTester tester) async{
      await tester.pumpWidget(MyWidget());
      var textField=find.byType(TextField);
      expect(textField,findsOneWidget);
      var button=find.text("Revers");
      expect(button,findsOneWidget);
      await tester.tap(button);
      await tester.pump();
      expect(find.text("Hello"),findsOneWidget);
  });
}