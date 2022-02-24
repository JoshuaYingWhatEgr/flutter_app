import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'pages/Category.dart';
import 'pages/Home.dart';
import 'pages/Setting.dart';


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
    home: Tabs());
  }
}

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Tabs();
  }
}

class _Tabs extends State<Tabs> {
  int _current_page = 0;

  List _Page_list = [
    Home_Pages(),
    Category_Pages(),
    Setting_Pages()
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: _Page_list[_current_page],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: this._current_page,
            onTap: (int index) {
              setState(() {
                this._current_page = index;
                print(index);
              });
            },
            items: [
              BottomNavigationBarItem(label: "首页", icon: Icon(Icons.home)),
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "分类"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box), label: "设置")
            ],
          ),
          appBar: AppBar(title: Text('Flutter Demo')));
  }
}
