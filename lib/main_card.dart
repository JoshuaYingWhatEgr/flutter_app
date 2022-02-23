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
            body: Flutter_card(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

class Flutter_card extends StatelessWidget {
  const Flutter_card({Key? key}) : super(key: key);

  Widget ImageWidget(String url) {
    return Image.network(url,fit:BoxFit.cover);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("zhangsan",style:TextStyle(fontSize: 20)),
                subtitle: Text("gaojigongchengshi")
              )
            ],
          ),
        )
      ],
    );
  }
}
