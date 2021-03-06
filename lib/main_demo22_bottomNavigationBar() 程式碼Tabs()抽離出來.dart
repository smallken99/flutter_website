import 'package:flutter/material.dart';
import 'res/listData.dart';

/*
1.bottomNavigationBar() 程式碼Tabs()抽離出來
2.
 */
void main() {
  runApp(MyApp());
}

//自定義組件

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tabs());
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Homepage(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1, // 0 , 1, 2...
          onTap: (index) {
            print(index);
          },
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

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
            children: this.list.map((value) {
          return ListTile(
            title: Text(value),
          );
        }).toList()),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('按鈕'),
          onPressed: () {
            setState(() {
              this.list.add('你好這是一則新聞');
            });
          },
        )
      ],
    );
  }
}
