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
            body: Flutter_gridview_expanded(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

/**
 * expanded
 */
class Flutter_gridview_expanded extends StatelessWidget {
  const Flutter_gridview_expanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build]
    return Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: IconContainer(Icons.ac_unit, size: 12,colors:Colors.yellow),
      ),
          Expanded(
            flex: 2,
            child: IconContainer(Icons.widgets, size: 12,colors:Colors.grey),
          ),
          Expanded(
            flex: 1,
            child: IconContainer(Icons.star, size: 12,colors:Colors.pink),
          )
    ]);
  }
}

class IconContainer extends StatelessWidget {
  IconData? icon;

  double? size;

  var colors;

  IconContainer(this.icon, {this.size = 32,this.colors});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      color: colors,
      child: Center(
        child: Icon(this.icon, size: this.size),
      ),
    );
  }
}
