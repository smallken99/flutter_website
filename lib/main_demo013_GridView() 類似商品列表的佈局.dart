import 'package:flutter/material.dart';
import 'res/listData.dart';

/*
1.GridView() 類似商品列表的佈局
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
  List<Widget> _getListData() {
    List<Widget> list = List();
    for (int i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '這是第$i條數據',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Colors.blue,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0, // 左右之間元素的距離
        mainAxisSpacing: 10.0, // 列表列之間的距離
        padding: EdgeInsets.all(10), // 和app邊緣之間的距離
        childAspectRatio: 0.7, // 格子的距形比例
        children: this._getListData());
  }
}
