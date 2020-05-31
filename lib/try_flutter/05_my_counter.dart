import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Counter"),
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
      child: MyCounterWidget(),
    );
  }
}

class MyCounterWidget extends StatefulWidget {
  @override
  _MyCounterWidgetState createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(color: Colors.redAccent, child: Text("+1"), onPressed: (){
//              print("pressed + button");
              setState(() {
                count++;
              });
            },),
            RaisedButton(color: Colors.orangeAccent, child: Text("-1"), onPressed: (){
//              print("pressed - button");
              setState(() {
                count--;
              });
            },)
          ],
        ),
        Text("Current count: $count")
      ],
    );
  }
}
