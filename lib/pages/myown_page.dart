import 'package:flutter/material.dart';

class MyownPage extends StatefulWidget {
  @override
  _MyownPageState createState() => _MyownPageState();
}


class _MyownPageState extends State<MyownPage> {

  Widget _nameSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget>[
            Text(
              '马未都',
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF333333)
                ) 
            ),
            Container(
              margin:const EdgeInsets.only(left: 10.0),
              child:Row(
                children:<Widget>[
                  Icon(
                    Icons.check_box,
                    size:16.0,
                    color:Colors.red
                  ),
                  Text(
                    '已认证',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF909090)
                      ) 
                  ),
                ]
              )
            )
          ]
        ),
        Text(
          '主治医师',
          style: TextStyle(
              fontSize: 16,
            ) 
        ),
        Text(
          '山东省立医院',
          style: TextStyle(
              fontSize: 16,
            ) 
        )
      ]
    );
  }

  Widget _mainInfoSection() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child:Column(
        children:<Widget>[
          Row(
            children:<Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('images/default.png')
              ),
              Container(
                margin:const EdgeInsets.only(left: 20.0),
                child:_nameSection()
              )
            ]
          ),
          Divider(),
          ListView(
            shrinkWrap: true,
            children:ListTile.divideTiles(
              context:context,
              tiles: [
                ListTile(
                  leading: Icon(Icons.assignment_ind),
                  title: Text('医生基础信息'),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.assignment_turned_in),
                  title: Text('医生认证信息'),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text('个人简介'),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.account_balance_wallet),
                  title: Text('我的收益'),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.add_comment),
                  title: Text('联系客服'),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.cloud_download),
                  title: Text('版本更新'),
                  trailing: Icon(Icons.chevron_right),
                ),
              ]
            ).toList()
          ),
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    	body:ListView(
        children:<Widget>[
          _mainInfoSection(),
        ]
      )
    );
  }
}