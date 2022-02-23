import 'dart:ffi';

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
            body: Flutter_layout(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

class Flutter_layout extends StatelessWidget {
  const Flutter_layout({Key? key}) : super(key: key);

  Widget ImageWidget(String url) {
    return Image.network(url,fit:BoxFit.cover);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            height: 200,
            color: Colors.black,
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 200,
                  child: ImageWidget('https://www.itying.com/images/flutter/1.png'),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  child: ListView(
                    children: <Widget>[
                      ImageWidget('https://www.itying.com/images/flutter/2.png'),
                      SizedBox(height: 10,),
                      ImageWidget('https://www.itying.com/images/flutter/3.png')
                    ]
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
