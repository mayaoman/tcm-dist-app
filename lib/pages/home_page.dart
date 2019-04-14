import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  var _buttons;

  //导航条按钮
  Column _navIconButton(icon, color, text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff333333)
            ) 
          )
        )
      ]
    );
  }

  //生成导航条按钮
  _generateButtons() {
    _buttons = [
      _navIconButton(Icons.person_add, Colors.red, '邀请患者'),
      _navIconButton(Icons.border_color, Colors.orange, '直接开方'),
      _navIconButton(Icons.shopping_cart, Colors.green, '已开处方'),
      _navIconButton(Icons.local_library, Colors.blue, '医药名录'),
      _navIconButton(Icons.assignment, Colors.cyan, '常用方'),
      _navIconButton(Icons.volume_up, Colors.red, '群发公告'),
      _navIconButton(Icons.settings, Colors.orange, '服务设置'),
      _navIconButton(Icons.date_range, Colors.blue, '坐诊信息')
    ];
  }

  _getAdImage() {
    return Image.asset(
        'images/test.jpg',
        height:180,
        fit: BoxFit.cover
      );
  } 

  //导航条按钮组
  Widget _navIconButtonSection() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      childAspectRatio: 1.0,
      children:_buttons
    );
  }

  //平台通知
  Widget nofication = ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/bell.png'),
          backgroundColor: Color(0xE6C07A00)
        ),
        title: Text('平台通知'),
        subtitle: Text('暂无消息')
  );

  _getChatList(context) {
    return ListView(
      children:ListTile.divideTiles(
        context:context,
        tiles: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/bell.png')
            ),
            title: Text('Horse'),
            subtitle: Text('A strong animal')
          )
        ].toList()
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    _generateButtons();

    return Scaffold(
    	body:ListView(
        children:<Widget>[
          _getAdImage(),
          _navIconButtonSection(),
          Divider(height:20.0),
          nofication,
          Divider()
        ] 
      ),
    );
  }
}



