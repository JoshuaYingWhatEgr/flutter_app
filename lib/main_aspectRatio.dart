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
            body: Flutter_AspectRatio(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

class Flutter_AspectRatio extends StatelessWidget {
  const Flutter_AspectRatio({Key? key}) : super(key: key);

  Widget ImageWidget(String url) {
    return Image.network(url,fit:BoxFit.cover);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: AspectRatio(
        aspectRatio: 0.5,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
