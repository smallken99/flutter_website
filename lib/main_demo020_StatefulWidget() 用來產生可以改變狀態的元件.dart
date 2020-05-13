import 'package:flutter/material.dart';
import 'res/listData.dart';

/*
1.StatefulWidget() 用來產生可以改變狀態的元件
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
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Chip(
          label: Text('${this.countNum}'),
        ),
        RaisedButton(
          child: Text('按鈕'),
          onPressed: () {
            setState(() {
              this.countNum++;
            });
          },
        )
      ],
    ));
  }
}
