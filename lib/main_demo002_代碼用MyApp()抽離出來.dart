import 'package:flutter/material.dart';
/*
1.可以不用 new Center() new Text() 可以省略 new
2.使用自定義組件 MyApp() 把代碼抽離出來
 */
void main() {
  runApp(MyApp());
}

//自定義組件

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        '你好Flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.yellow
        )

      ),
    );
  }


}
