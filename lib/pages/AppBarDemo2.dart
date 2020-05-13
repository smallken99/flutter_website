import 'package:flutter/material.dart';

class AppBarDemo2Page extends StatelessWidget {
  const AppBarDemo2Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('AppBarDemo2Page'),
            // backgroundColor: Colors.red, // 背景的顏色
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print('menu');
              }, // 在AppBar前面放一個小圖示,並且可以監聽事件
            ),
            // actions: <Widget>[
            //   IconButton(
            //     icon: Icon(Icons.search),
            //     onPressed: () {
            //       print('search');
            //     },
            //   ),
            //   IconButton(
            //     icon: Icon(Icons.settings),
            //     onPressed: () {
            //       print('setting');
            //     },
            //   )
            // ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: '熱門',
                ),
                Tab(
                  text: '推薦',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第一個tab'),
                  ),
                  ListTile(
                    title: Text('第一個tab'),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第二個tab'),
                  ),
                  ListTile(
                    title: Text('第二個tab'),
                  )
                ],
              )
            ],
          )),
    );
  }
}
