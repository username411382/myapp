import 'package:flutter/material.dart';
import 'package:myapp/toast.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _allData(int count) {
      return new List<Widget>.generate(
          count,
          (int index) => new Container(
                child: new Listener(
                  child: new Text("第$index个"),
                  onPointerUp: (event) => Toast.toast(context, "点击了$index"),
                ),
              ));
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("列表页面"),
      ),
      body: new Center(
        child: new ListView(
          children: _allData(50),
        ),
      ),
    );
  }
}
