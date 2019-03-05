import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(25.0),
      child: new Row(
        children: [
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: new Text(
                  "MainTitle",
                  style: new TextStyle(color: Colors.black),
                ),
              ),
              new Text(
                "subTitle",
                style: new TextStyle(color: Color(0xFF880E4F)),
              ),
            ],
          )),
          new Image.asset(
            "images/test.png",
            height: 20,
            width: 20,
            fit: BoxFit.cover,
          ),
          new Text("41"),
        ],
      ),
    );

    Column buildButtonColumn(Image image, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          new Text(
            label,
            style: new TextStyle(
              fontSize: 12.0,
              color: color,
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(
              Image.asset(
                "images/test.png",
                height: 20,
                width: 20,
              ),
              "图标1"),
          buildButtonColumn(
              Image.asset(
                "images/test.png",
                height: 20,
                width: 20,
              ),
              "图标2"),
          buildButtonColumn(
              Image.asset(
                "images/test.png",
                height: 20,
                width: 20,
              ),
              "图标3"),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: EdgeInsets.all(15.0),
      child: new Text(
        "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer."
            " Activities enjoyed here include rowing, and riding the summer toboggan run",
        style: new TextStyle(
          fontSize: 25.0,
          color: Colors.red,
        ),
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(primaryColor: Colors.brown),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(
            child: new Text('Welcome to Flutter Title'),
          ),
        ),
        body: new ListView(
          children: [
            new Image.asset(
              "images/test.png",
              height: 200.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
