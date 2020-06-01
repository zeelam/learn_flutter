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
          title: Text("Image"),
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
    return Image.asset("assets/images/flutter.jpg");
  }
}

class NetworkImageWidgetDemo extends StatelessWidget {
  const NetworkImageWidgetDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Image.network(
        "http://img0.dili360.com/ga/M01/48/3C/wKgBy1kj49qAMVd7ADKmuZ9jug8377.tub.jpg",
        fit: BoxFit.contain,
        alignment: Alignment.center,
        repeat: ImageRepeat.repeat,
      ),
      color: Colors.red,
    );
  }
}
