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
        theme: ThemeData(backgroundColor: Colors.yellow),
        home: Scaffold(
            body: Flutter_gridview_count(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

/**
 * grideview count
 */
class Flutter_gridview_count extends StatelessWidget {
  const Flutter_gridview_count({Key? key}) : super(key: key);

  List<Widget> _listData() {
    List<Widget> lists = [];
    for (var i = 0; i < 20; i++) {
      lists.add(Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: Text(
          '第$i文本',
          style: TextStyle(color: Colors.yellow, fontSize: 10.0),
        ),
      ));
    }
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: EdgeInsets.all(10.0),
      crossAxisCount: 2,
      children: _listData(),
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
    );
  }
}
