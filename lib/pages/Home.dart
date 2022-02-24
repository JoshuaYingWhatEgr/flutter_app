import 'package:flutter/material.dart';

class Home_Pages extends StatefulWidget {
  const Home_Pages({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Home_Pages();
  }

}

class _Home_Pages extends State<Home_Pages> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('这是首页'),
    );
  }
}
