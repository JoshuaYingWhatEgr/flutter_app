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
            body: Flutter_gridview_row(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

/**
 * row
 */
class Flutter_gridview_row extends StatelessWidget {
  const Flutter_gridview_row({Key? key}) : super(key: key);

  Widget _listData(context, index) {
    return Container(
        alignment: Alignment.center,
        child: Text(
          '第$index文本',
          style: TextStyle(color: Colors.yellow, fontSize: 10.0),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black), color: Colors.green));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build]
    return Container(
        height: 600.0,
        width: 400.0,
        color: Colors.greenAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconContainer(Icons.ac_unit, size: 12),
            IconContainer(Icons.widgets, size: 12),
            IconContainer(Icons.accessibility, size: 12)
          ],
        ));
  }
}

class IconContainer extends StatelessWidget {
  IconData? icon;

  double? size;

  IconContainer(this.icon, {this.size = 32});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
      child: Center(
        child: Icon(this.icon, size: this.size),
      ),
    );
  }
}
