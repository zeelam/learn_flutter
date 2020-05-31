import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: ZLHomePage(),
      ),
    );
  }
}


class ZLHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(value: false, onChanged: (value) {
              print(value);
            },),
            Text("Agree", style: TextStyle(fontSize: 20),),
          ],
        )
    );
  }

}