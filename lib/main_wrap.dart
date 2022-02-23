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
            body: Flutter_wrap(), appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

class Flutter_wrap extends StatelessWidget {
  const Flutter_wrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      alignment: WrapAlignment.spaceEvenly,
      children: <Widget>[
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  String? title;

  MyButton(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text(title ?? " "), onPressed: null);
  }
}
