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
          title: Text("CircleAvatar"),
        ),
        body: ZLHomePage(),
      ),
    );
  }
}

class ZLHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomeBody();
  }
}

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: "username",
              hintText: "your username",
            ),
            onChanged: (value){
              print("textField change: $value");
            },
            onSubmitted: (value){
              print("submit: $value");
            },
          )
        ],
      ),
    );
  }
}

