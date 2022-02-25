import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Search.dart';
import 'pages/Search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: MaterialApp(
        theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.yellow)),
        home: Scaffold(
            body: TabBarView(
              children: [
                Text('热门1'),
                Text('推荐1'),
              ],
            ),
            appBar: AppBar(
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text:'热门'),
                  Tab(text:'推荐')
                ],
              ),
              title: Text('Flutter Demo'),
              leading: Icon(Icons.menu),
              actions: <Widget>[
                Icon(Icons.add_circle_outlined)
              ],
            ))));
  }
}
