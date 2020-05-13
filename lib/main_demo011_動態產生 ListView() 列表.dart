import 'package:flutter/material.dart';

/*
1.動態產生 ListView() 列表
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
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomeContent extends StatelessWidget {
//  自定義方法
  List<ListTile> _geteData() {
    List<ListTile> list = new List();
    for (var i = 1; i < 10; i++) {
      list.add(ListTile(title: Text('我是$i個列表')));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._geteData(),
    );
  }
}
