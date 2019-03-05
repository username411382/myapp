import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(
            child: new Text('Welcome to Flutter Title'),
          ),
        ),
        body: new Center(
          child: new Text('Hello World RH Do well'),
        ),
      ),
    );
  }
}