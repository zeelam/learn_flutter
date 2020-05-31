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


class ZLHomePage extends StatefulWidget {
  @override
  _ZLHomePageState createState() => _ZLHomePageState();
}

class _ZLHomePageState extends State<ZLHomePage> {

  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(value: isCheck, onChanged: (value) {
              setState(() {
                isCheck = value;
              });
            },),
            Text("Agree", style: TextStyle(fontSize: 20),),
          ],
        )
    );
  }
}