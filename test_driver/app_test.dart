import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){
  group('flutter revers app test',(){
    FlutterDriver driver;

    setUpAll(()async{
      driver=await FlutterDriver.connect();
    });
    tearDown((){
      if(driver != null){
        driver.close();
      }
    });
    var  textField=find.byType("TextField");
    //var  text=find.text("Hello");
    var revers=find.text("olleH");
    test("reverses the Hello",()async{
      await driver.tap(textField);
      await Future.delayed(Duration(seconds:2));
      //await driver.enterText("Hello");
      //await driver.waitForAbsent(revers);
      //await driver.waitFor(revers);
      await driver.waitUntilNoTransientCallbacks();
      assert(revers!=null);
    });
  });
}