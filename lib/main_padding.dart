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
            body: Flutter_gridview_padding(),
            appBar: AppBar(title: Text('Flutter Demo'))));
  }
}

/**
 * padding
 */
class Flutter_gridview_padding extends StatelessWidget {
  const Flutter_gridview_padding({Key? key}) : super(key: key);

  Widget _listData(context, index) {
    return Container(
        alignment: Alignment.center,
        child: Text(
          '第$index文本',
          style: TextStyle(color: Colors.yellow, fontSize: 10.0),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black), color: Colors.green));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build]
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(crossAxisCount: 2,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                    'https://www.itying.com/images/flutter/2.png',
                    fit: BoxFit.cover)),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                    'https://www.itying.com/images/flutter/3.png',
                    fit: BoxFit.cover)),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                    'https://www.itying.com/images/flutter/4.png',
                    fit: BoxFit.cover)),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                    'https://www.itying.com/images/flutter/2.png',
                    fit: BoxFit.cover)),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                    'https://www.itying.com/images/flutter/3.png',
                    fit: BoxFit.cover)),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                    'https://www.itying.com/images/flutter/4.png',
                    fit: BoxFit.cover))
          ]),
    );
  }
}
