import 'package:flutter_test/flutter_test.dart';
import 'package:wiget_test/main.dart';

void main(){
  test("Hello Should Be Revers", (){
    String initial="Hello";
    String reversed=revers(initial);
    expect(reversed, "olleH");

  });
}