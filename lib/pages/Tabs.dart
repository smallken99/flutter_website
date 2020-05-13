import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';
import 'tabs/Category.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [Homepage(), CategoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex, // 0 , 1, 2...
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
            print(index);
          },
          iconSize: 40, //Icon的大小
          // fixedColor: Colors.red, //選中的顏色
          type: BottomNavigationBarType.fixed, //配置底部tabs可以有多個按鈕
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首頁'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分類'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('設定'),
            )
          ],
        ),
      ),
    );
  }
}
