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
            body: Flutter_list_builder(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

/**
 * listview builder
 */
class Flutter_list_builder extends StatelessWidget {
  List list_data = [];

  Flutter_list_builder() {
    for (var i = 0; i < 20; i++) {
      list_data.add('第$i个列表');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: list_data.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text(list_data[index]));
      },
    );
  }
}
