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
        theme: ThemeData(backgroundColor: Colors.white),
        home: Scaffold(
          body: ,
          appBar:AppBar(title: Text('Flutter Demo'))
        )
    );
  }
}

class Flutter_list_builder extends StatelessWidget {
  const Flutter_list_builder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(itemBuilder: itemBuilder)
  }

}

