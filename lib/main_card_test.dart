import 'dart:ffi';
import 'dart:ui';

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
            body: Flutter_card_test(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

class Flutter_card_test extends StatelessWidget {
  const Flutter_card_test({Key? key}) : super(key: key);

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
              Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover),
              ListTile(
                leading:CircleAvatar(
                  backgroundImage:NetworkImage("https://www.itying.com/images/flutter/2.png",),
                ),
                title:Text('xxxxx'),
                subtitle: Text('xxxxxxxxxxxx'),
              )
            ],
          ),
        )
      ],
    );
  }
}
