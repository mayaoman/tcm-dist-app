import 'package:flutter/material.dart';

class PublicNoticePage extends StatefulWidget {
  @override
  _PublicNoticePageState createState() => _PublicNoticePageState();
}


class _PublicNoticePageState extends State<PublicNoticePage> {

  Widget _noticeList() {
    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children:ListTile.divideTiles(
        context:context,
        tiles:<Widget>[
          ListTile(
            title: Text('测试公告1'),
            subtitle: Text(
              '2019-04-20 10:10:00'
            ),
            trailing: Text(
              '待审核',
              style:TextStyle(
                color:Colors.red
              )
            )
          ),
          ListTile(
            title: Text('测试公告2'),
            subtitle: Text(
              '2019-05-20 15:25:00'
            ),
            trailing: Text(
              '待审核',
              style:TextStyle(
                color:Colors.red
              )
            )
          ),
        ]
      ).toList()
    );
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child:Scaffold(
        appBar: AppBar(
          title: Text('编辑公告'),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () { Navigator.pop(context); },
              );
            },
          ),
          actions: <Widget>[
            FlatButton(
                child: new Text('增加'),
                onPressed: () {},
            )
          ],
        ),
        body: ListView(
          children:<Widget>[
            Container(
              padding:EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.5, color: Color(0xFFFAFAFAF)),
                )
              ),
              child:Text(
                '我的公告栏 (0/1)',
                style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )
              )
            ),
            _noticeList()
          ]
        ),

      ),
    );
  }
}