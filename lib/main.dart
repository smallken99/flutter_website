import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

/*
1.Tabs() 選中頁面就跳到該頁
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
        debugShowCheckedModeBanner: false, // 不要debug小圖示
        home: Tabs());
  }
}
