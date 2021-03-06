import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Home.dart';
import 'package:flutter_app/pages/Search.dart';
import 'pages/Search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.yellow)),
      home: Scaffold(
          body: Center(
            child: RaisedButton(
              child: Text("跳转到搜索页面"),
              onPressed: () {
                //命名路由传值
                Navigator.of(context).pushNamed('/search',arguments: 'hello');
              },
            ),
          ),
          appBar: AppBar(title: Text('Flutter Demo'))),
      routes: {
        //命名路由
        '/search': (context) => Search_Pages(),
        '/home': (context) => Home_Pages()
      },
    );
  }
}
