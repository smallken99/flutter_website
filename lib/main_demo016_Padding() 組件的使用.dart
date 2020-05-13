import 'package:flutter/material.dart';
import 'res/listData.dart';

/*
1.Padding() 組件的使用
2.
 */
void main() {
  runApp(MyApp());
}

//自定義組件

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter 管理系統')),
        body: LayoutDermo(),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LayoutDermo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                  'http://placehold.it/120x120',
                  fit: BoxFit.cover,
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                  'http://placehold.it/120x120',
                  fit: BoxFit.cover,
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                  'http://placehold.it/120x120',
                  fit: BoxFit.cover,
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                  'http://placehold.it/120x120',
                  fit: BoxFit.cover,
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                  'http://placehold.it/120x120',
                  fit: BoxFit.cover,
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                  'http://placehold.it/120x120',
                  fit: BoxFit.cover,
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                  'http://placehold.it/120x120',
                  fit: BoxFit.cover,
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.network(
                  'http://placehold.it/120x120',
                  fit: BoxFit.cover,
                )),
          ],
        ));
  }
}
