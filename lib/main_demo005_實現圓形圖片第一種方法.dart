import 'package:flutter/material.dart';

/*
1.實現圓形圖片第一種方法
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
      width: 300,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.yellowAccent,
//        實現圓形圖片
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
              image: NetworkImage(
                  "https://img.itw01.com/images/2018/06/11/15/2900_Bkk372_FJ9TXEU.jpeg!r800x0.jpg"),
              fit: BoxFit.cover)),
    ));
  }
}
