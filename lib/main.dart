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
        theme: ThemeData(appBarTheme:AppBarTheme(color:Colors.yellow)),
        home: Scaffold(
            body: Flutter_gridview_builder(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

/**
 * grideview count
 */
class Flutter_gridview_builder extends StatelessWidget {
  const Flutter_gridview_builder({Key? key}) : super(key: key);

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
    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2
      ),
      itemBuilder: _listData,
      itemCount: 10,
    );
  }
}
