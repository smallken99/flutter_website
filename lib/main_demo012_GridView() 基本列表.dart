import 'package:flutter/material.dart';
import 'res/listData.dart';

/*
1.GridView() 基本列表
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
    return GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          Text('這是一條數據'),
          Text('這是一條數據'),
          Text('這是一條數據'),
          Text('這是一條數據'),
          Text('這是一條數據'),
          Text('這是一條數據'),
          Text('這是一條數據'),
          Text('這是一條數據'),
          Text('這是一條數據'),
          Text('這是一條數據'),
        ],

    );
  }
}
