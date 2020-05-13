import 'package:flutter/material.dart';
import 'res/listData.dart';

/*
1.自定義按鈕組件
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
        body: LayoutDermo(),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LayoutDermo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconContainer(Icons.search,color:Colors.red,size: 32)  ;
  }
}

class IconContainer extends StatelessWidget{
//  定義構造函數
  double size;
  Color color = Colors.red;
  IconData icon;

  IconContainer(this.icon,{ this.color, this.size,});
  @override
  Widget build(BuildContext context) {
     return Container(
       height: 100,
       width: 100,
       color: this.color,
       child: Center(
         child: Icon(this.icon,size: this.size,color: Colors.white,),
       ),
     );
  }

}