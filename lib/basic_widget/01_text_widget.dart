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
          title: Text("Text Widget"),
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
    return RichTextWidgetDemo();
  }
}

class RichTextWidgetDemo extends StatelessWidget {
  const RichTextWidgetDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          children: [
            TextSpan(text: "《定风波》", style: TextStyle(fontSize: 26, color: Colors.red, fontWeight: FontWeight.bold)),
            TextSpan(text: "苏轼\n", style: TextStyle(fontSize: 20, color: Colors.redAccent)),
            TextSpan(text: "莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。"),
          ]
      ),
      textAlign: TextAlign.center,
    );
  }
}

class TextWidgetDemo extends StatelessWidget {
  const TextWidgetDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "《定风波》 苏轼 \n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr, // TextDirection.rtl
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}