import 'package:flutter/material.dart';

class Search_Pages extends StatefulWidget {
  const Search_Pages({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Search_Pages();
  }

}

class _Search_Pages extends State<Search_Pages> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}
