import 'package:flutter/material.dart';
import 'dart:developer';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  var _buttons;

  //导航条按钮
  Widget _navIconButton(icon, color, text, handleTap) {
    // var backgroundColor = Color(0xfafafaff);
    return GestureDetector(
      onTap: handleTap,
      // onTapDown:(tapDownDetails) { backgroundColor = Color(0xfffffffff); },
      child: Container(
        // color:backgroundColor,
        child:Column(
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
        )
      ),
    );
  }

  _handleNavIconButtonTap() {
    debugPrint('haha');
  }

  //生成导航条按钮
  _generateButtons(context) {
    _buttons = [
      _navIconButton(Icons.person_add, Colors.red, '邀请患者', ()=>Navigator.pushNamed(context, '/mycard')),
      _navIconButton(Icons.border_color, Colors.orange, '直接开方', _handleNavIconButtonTap),
      _navIconButton(Icons.shopping_cart, Colors.green, '已开处方', _handleNavIconButtonTap),
      _navIconButton(Icons.local_library, Colors.blue, '医药名录', ()=>Navigator.pushNamed(context, '/medical_list')),
      _navIconButton(Icons.assignment, Colors.cyan, '常用方', _handleNavIconButtonTap),
      _navIconButton(Icons.volume_up, Colors.red, '群发公告', ()=>Navigator.pushNamed(context, '/public_notice')),
      _navIconButton(Icons.settings, Colors.orange, '服务设置', _handleNavIconButtonTap),
      _navIconButton(Icons.date_range, Colors.blue, '坐诊信息', _handleNavIconButtonTap)
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
      physics: ClampingScrollPhysics(),
      crossAxisCount: 4,
      childAspectRatio: 1.0,
      children:_buttons
    );
  }

  //平台通知
  Widget nofication = ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/bell.png'),
          backgroundColor: Color(0xFFE6C07A)
        ),
        title: Text('平台通知'),
        subtitle: Text('暂无消息')
  );

  _chatListItem(headImage, title, subtitle) {
     return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(headImage)
        ),
        title: Text(title),
        trailing:Text('2019年4月30日'),
        subtitle: Text(subtitle)
      );
  }

  _chatList(context) {
    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children:ListTile.divideTiles(
        context:context,
        tiles: [
          _chatListItem('images/man.png', '马要满', '图文调理'),
          _chatListItem('images/woman.png', '杨子', '医生助理'),
          _chatListItem('images/default.png', '孙刚', '图文调理')
        ]
      ).toList()
    );
  }


  @override
  Widget build(BuildContext context) {
    _generateButtons(context);

    return Scaffold(
    	body:ListView(
        children:<Widget>[
          _getAdImage(),
          _navIconButtonSection(),
          Divider(height:20.0),
          nofication,
          Divider(),
          _chatList(context)
        ] 
      ),
    );
  }
}



