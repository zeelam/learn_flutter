import 'package:flutter/material.dart';

void main() => (runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Zeelam's App"),
        ),
        body: Center(
          child: Text("Hello World",
              style: TextStyle(fontSize: 36)
          ),
        ),
      ),
    )
));