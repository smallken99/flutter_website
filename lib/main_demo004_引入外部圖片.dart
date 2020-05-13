import 'package:flutter/material.dart';

/*
1.Image.network(src) 引入外部圖片
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
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Image.network(
        "https://img.itw01.com/images/2018/06/11/15/2900_Bkk372_FJ9TXEU.jpeg!r800x0.jpg",
        alignment: Alignment.topCenter,
        fit: BoxFit.cover,
//        repeat: ImageRepeat.repeat,
      ),
      width: 300,
      height: 300,
      decoration: BoxDecoration(color: Colors.yellowAccent),
    ));
  }
}
