import 'package:flutter/material.dart';


void main() {
  return runApp(MyWidget());}

class MyWidget extends StatefulWidget {

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    String text="";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 100,
                width:double.infinity,
                child: TextField(decoration: InputDecoration(hintText:"Hi",),),
              ),
              SizedBox(height: 20,),
              Text(text,style: TextStyle(fontSize: 34),),
              SizedBox(height: 20,),
              FlatButton(onPressed: (){
                    setState(() {
                      text=revers(text);
                    });
              }, child:Text("Revers")),
            ],
          ),
        ),
      ),
    );
  }
}
String revers(String text){
  print(text.split('').reversed.join());
   return text.split('').reversed.join();
}
