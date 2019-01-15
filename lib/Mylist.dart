import 'package:flutter/material.dart';

//listview优化代码简介  抽出组件 用于main.dart文件第七天
class MyList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 70.0,
          color: Colors.green,
        ),
        new Container(
          width: 100.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 130.0,
          color: Colors.amber,
        ),
        new Container(
          width: 160.0,
          color: Colors.purple,
        ),
        new Container(
          width: 190.0,
          color: Colors.greenAccent,
        ),
        new Container(
          width: 220.0,
          color: Colors.deepOrange,
        )
      ],
    );
  }
}
