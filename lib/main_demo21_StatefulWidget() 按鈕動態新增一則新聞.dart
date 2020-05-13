import 'package:flutter/material.dart';
import 'res/listData.dart';

/*
1.StatefulWidget() 按鈕動態新增一則新聞
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
            appBar: AppBar(
              title: Text('Flutter Demo'),
            ),
            body: Homepage()));
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
