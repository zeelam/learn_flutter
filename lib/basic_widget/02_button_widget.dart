import 'package:flutter/cupertino.dart';
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
    return MyHomeBody();
  }
}

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomButtonWidgetDemo();
  }
}

class CustomButtonWidgetDemo extends StatelessWidget {
  const CustomButtonWidgetDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          child: Text("FlatButton"),
          onPressed: () {
            print("click the FlatButton");
          },
          color: Colors.redAccent,
          textColor: Colors.white,
          highlightColor: Colors.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        )
      ],
    );
  }
}

class ButtonWidgetDemo1 extends StatelessWidget {
  const ButtonWidgetDemo1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FloatingActionButton(
          child: Text("FloatingActionButton"),
          onPressed: () {
            print("click the FloatingActionButton");
          },
        ),
        RaisedButton(
          child: Text("RaisedButton"),
          onPressed: () {
            print("click the RaisedButton");
          },
        ),
        FlatButton(
          child: Text("FlatButton"),
          onPressed: () {
            print("click the FlatButton");
          },
        ),
        OutlineButton(
          child: Text("OutlineButton"),
          onPressed: () {
            print("click the OutlineButton");
          },
        )
      ],
    );
  }
}
