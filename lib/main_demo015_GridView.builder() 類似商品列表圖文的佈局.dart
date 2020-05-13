import 'package:flutter/material.dart';
import 'res/listData.dart';

/*
1.GridView.builder() 類似商品列表圖文的佈局
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
  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 5),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
//        crossAxisCount: 2,
//        crossAxisSpacing: 10.0,
//        // 左右之間元素的距離
//        mainAxisSpacing: 10.0,
//        // 列表列之間的距離
//        padding: EdgeInsets.all(10),
//        // 和app邊緣之間的距離
////        childAspectRatio: 0.7,
//        // 格子的距形比例
//        children: this._getListData());
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        padding: EdgeInsets.all(10),
        itemCount: listData.length,
        itemBuilder: this._getListData);
  }
}
