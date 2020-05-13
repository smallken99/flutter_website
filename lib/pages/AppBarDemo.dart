import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBarDemoPage'),
          // backgroundColor: Colors.red, // 背景的顏色
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('menu');
            }, // 在AppBar前面放一個小圖示,並且可以監聽事件
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search');
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('setting');
              },
            )
          ],
        ),
        body: Text('111'),
      ),
    );
  }
}
