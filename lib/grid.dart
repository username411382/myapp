import 'package:flutter/material.dart';
import 'package:myapp/toast.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Container> _buildGridTitleList(int count) {
      return new List<Container>.generate(
          count,
          (int index) => new Container(
                child: new Listener(
                  child: new Image.asset("images/test.png", fit: BoxFit.cover),
                  onPointerUp: (event) => Toast.toast(context, "点击的位置$index"),
                ),
              ));
    }

    Widget _buildGrid() {
      return new GridView.extent(
          maxCrossAxisExtent: 150.0,
          padding: const EdgeInsets.all(0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: _buildGridTitleList(30));
    }

    Widget _buildColumnGrid() {
      return new GridView.count(
        crossAxisCount: 4,
        padding: const EdgeInsets.all(0),
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
        children: _buildGridTitleList(20),
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Container(
          child: new Text("grid 展示"),
        ),
      ),
      body: new Center(
        child: _buildColumnGrid(),
      ),
    );
  }
}
