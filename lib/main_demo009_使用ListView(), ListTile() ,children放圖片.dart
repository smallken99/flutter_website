import 'package:flutter/material.dart';

/*
1.使用ListView(), ListTile() ,children放圖片
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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network('https://cdn2.ettoday.net/images/4120/d4120647.jpg'),
        Container(
          child: Text(
            '我是一個標題',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          height: 40,
          padding: EdgeInsets.all(10),
        ),
        Image.network(
            'https://up.enterdesk.com/edpic_360_360/c6/df/95/c6df953c0512419d2c74b682a2ea7096.jpg'),
        Container(
          child: Text(
            '我是一個標題',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          height: 40,
          padding: EdgeInsets.all(10),
        ),
        Image.network(
            'https://5.blog.xuite.net/5/e/1/b/17193537/blog_1645261/txt/305119271/0.jpg'),
        Container(
          child: Text(
            '我是一個標題',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          height: 40,
          padding: EdgeInsets.all(10),
        ),
        Image.network(
          'https://www.mangoxo.com/external/channel/data/15/cover/f3530e700d0043c18c24e82f506ea5d2.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          child: Text(
            '我是一個標題',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          height: 40,
          padding: EdgeInsets.all(10),
        ),
      ],
    );
  }
}
