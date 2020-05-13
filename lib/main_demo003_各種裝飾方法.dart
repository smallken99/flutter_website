import 'package:flutter/material.dart';

/*
1.container() 各種的裝飾方法
2.Text()  各種的裝飾方法
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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('台中一名劉姓女子，日前收到「包裏已派發.請您及時查收.',
            textAlign: TextAlign.left,
            overflow: TextOverflow.fade,
//            maxLines: 1,
            textScaleFactor: 2,
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.red,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.black,
                decorationStyle: TextDecorationStyle.dashed,
                letterSpacing: 5.0)),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellowAccent,
          border: Border.all(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
//          padding: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(10, 30, 5, 0),
        margin: EdgeInsets.all(10),
//        transform: Matrix4.translationValues(100,0,0),
//      transform: Matrix4.rotationZ(-0.3),
//      transform: Matrix4.diagonal3Values(1,1.2,1),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
