import 'package:flutter/material.dart';
import '../Search.dart';
import '../AppBarDemo.dart';
import '../AppBarDemo2.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳轉到搜尋頁面'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SearchPage()));
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳轉到AppBarDemo'),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AppBarDemoPage()));
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳轉到AppBarDemo2'),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AppBarDemo2Page()));
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
