import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.yellow)),
        home: Scaffold(
            body: HomePage_stateFul(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

class HomePage_stateLess extends StatelessWidget {
  int count = 0;

  HomePage_stateLess(this.count, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text('${this.count}'),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            this.count++;
            print(this.count);
          },
        )
      ]),
    );
  }
}

/**
 * 自定义有状态组件
 */
class HomePage_stateFul extends StatefulWidget {
  int? count;

  HomePage_stateFul({this.count, Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePage_stateFul();
  }
}

class _HomePage_stateFul extends State<HomePage_stateFul> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text('${_count}'),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            setState(() {
              _count++;
            });
            print(_count);
          },
        )
      ]),
    );
  }
}
