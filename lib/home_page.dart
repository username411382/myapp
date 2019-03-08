import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/grid.dart';
import 'package:myapp/list_view.dart';
import 'package:myapp/signature.dart';
import 'package:myapp/toast.dart';

class HomePage extends StatelessWidget {
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
                child: TextMainTitle(),
              ),
              new SubTextTitle(),
            ],
          )),
          new Image.asset(
            "images/test.png",
            height: 20,
            width: 20,
            fit: BoxFit.cover,
          ),
          new GestureDetector(
            child: new Text("41",style: new TextStyle(fontSize: 35.0),),
            onTap: () {
              Toast.toast(context,"哈哈啊哈");
              Navigator.push(context, MaterialPageRoute(builder: (_) => Signature()));
            },
          ),
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

    Widget weightImage = new Center(
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Expanded(
            child: new Image.asset("images/test.png"),
            flex: 2,
          ),
          new Expanded(child: new Image.asset("images/test.png")),
          new Expanded(child: new Image.asset("images/test.png")),
        ],
      ),
    );

    Widget ratings = new Container(
      padding: EdgeInsets.all(20),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.black,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
              ),
              new Icon(
                Icons.star,
                color: Colors.red,
              ),
              new Icon(
                Icons.star,
                color: Colors.red,
              ),
            ],
          ),
          new Text(
            "评论星级",
            style: new TextStyle(fontSize: 12, color: Colors.red),
          ),
        ],
      ),
    );

    var cornerImage = new Container(
      padding: EdgeInsets.all(10),
      decoration: new BoxDecoration(
        color: Colors.blueGrey,
      ),
      child: new Row(
        children: [
          new Expanded(
            child: new Container(
              margin: EdgeInsets.only(right: 10),
              decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.red, width: 10),
                  borderRadius:
                      new BorderRadius.all(const Radius.circular(10))),
              child: new Image.asset("images/test.png"),
            ),
          ),
          new Expanded(
            child: new Container(
              margin: EdgeInsets.only(left: 10),
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.red, width: 10),
                borderRadius: new BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: new Image.asset("images/test.png"),
            ),
          ),
        ],
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
            ImageTop(),
            titleSection,
            buttonSection,
            textSection,
            weightImage,
            ratings,
            cornerImage,
            CircleStack(),
          ],
        ),
      ),
    );
  }
}

class ImageTop extends StatefulWidget {
  @override
  State createState() {
    return _GridState();
  }
}

class _GridState extends State<ImageTop> {
  @override
  Widget build(BuildContext context) {
    return new Listener(
      child: new Image.asset(
        "images/test.png",
        height: 200.0,
        fit: BoxFit.cover,
      ),
      onPointerDown: (event) =>
          Navigator.push(context, MaterialPageRoute(builder: (_) => Grid())),
    );
  }
}

class TextMainTitle extends StatefulWidget {
  @override
  State createState() {
    return _ListView();
  }
}

class _ListView extends State<TextMainTitle> {
  @override
  Widget build(BuildContext context) {
    return new Listener(
      child: new Text(
        "MainTitle",
        style: new TextStyle(color: Colors.black),
      ),
      onPointerUp: (event) => Navigator.push(
          context, MaterialPageRoute(builder: (_) => ListViewPage())),
    );
  }
}

class SubTextTitle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SubTextTitleState();
  }
}

class _SubTextTitleState extends State<SubTextTitle> {
  String subTextContent = "subTitle";

  void _updateSubText() {
    setState(() {
      subTextContent = subTextContent == "哈哈哈" ? "subTitle" : "哈哈哈";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: _updateSubText,
      child: new Container(
        child: new Text(subTextContent),
      ),
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}

class CircleStack extends StatefulWidget {
  @override
  State createState() {
    return _CircleStack();
  }
}

class _CircleStack extends State<CircleStack> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        new CircleAvatar(
          backgroundImage: new AssetImage('images/test.png'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.black45,
          ),
          child: new Text(
            'Mia B',
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

get() async {
  var httpClient = new HttpClient();

  var uri = new Uri.http("", "", null);
  var request = await httpClient.getUrl(uri);
  var response = await request.close();
  //var responseBody = await response.transform(UT).join();
}
