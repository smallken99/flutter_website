import 'package:flutter/material.dart';

/*
1.使用ListView(), ListTile() ,設置垂直列表
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
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_balance_wallet, color: Colors.blue,size:40 ,),
          title: Text(
            '北韓官媒曝金正恩最新動態 未見身影引疑竇',
            style: TextStyle(fontSize: 22.0),
          ),
          subtitle: Text(
            '韓聯社報導，勞動新聞今早刊出此則報導，看起來是相當平常的、關於金正恩的例行報導',
            style: TextStyle(fontSize: 22.0),
          ),
          trailing: Icon(Icons.pages),
        ),
        ListTile(
          leading: Icon(Icons.settings_backup_restore, color: Colors.blue,size:40),
          title: Text(
            '明天大限將屆 婦聯會面臨解散 390億財產恐充公',
            style: TextStyle(fontSize: 22.0),
          ),
          subtitle: Text(
              '內政部要求屬「政治團體」的婦聯會轉型政黨的大限，將於明天到期，由於婦聯會已決意拒絕這項要求，預料明天後內政部一旦發出公文，成立70年的婦聯會'),
          trailing: Icon(Icons.pages),
        ),
        ListTile(
          leading: Image.asset('images/a.jpg'),
          title: Text(
            '網酸「全台最安全觀光區」墾丁大街周末夜慘淪空城！',
            style: TextStyle(fontSize: 22.0),
          ),
          subtitle: Text(
              '「沒有更慘，只有最慘！」冠肺炎疫情續燒重創觀光業，日前才遭中央流行疫情指揮中心發布國家級警報引發業者不滿的的墾丁大街，最新照片又被民眾PO網曝光'),

        )
      ],
    );
  }
}
