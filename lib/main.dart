import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/splash_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'FlutterDemo',
        routes: <String, WidgetBuilder>{
          //配置路径
          '/home_page': (BuildContext context) => new HomePage(),
        },
        home: new SplashPage());
  }
}
