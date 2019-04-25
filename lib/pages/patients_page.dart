import 'package:flutter/material.dart';
import '../commons/common_widgets.dart';

class PatientsPage extends StatefulWidget {
  @override
  _PatientsPageState createState() => _PatientsPageState();
}


class _PatientsPageState extends State<PatientsPage> {

  // Widget _searchTextEdit() {
  //  return Container(
  //    padding: const EdgeInsets.all(12.0),
  //    child:Container(
  //     // padding: const EdgeInsets.all(8.0),
  //     alignment: Alignment.center,
  //     height: 45.0,
  //     decoration: new BoxDecoration(
  //         color: Colors.grey[200],
  //         border: new Border.all(color: Colors.grey[400], width: 1.0),
  //         borderRadius: new BorderRadius.circular(12.0)),
  //     child: TextFormField(
  //       decoration: InputDecoration(
  //         hintText:'搜索姓名/备注/手机号',
  //         contentPadding: new EdgeInsets.symmetric(vertical: 8.0),
  //         border: InputBorder.none,
  //         prefixIcon:Padding(
  //           padding: EdgeInsets.all(0.0),
  //           child: Icon(
  //             Icons.search,
  //             color: Colors.grey,
  //           ), 
  //         ),
  //       ),
  //     )
  //   )
  //  );
  // }

  Widget _newPatientsSection() {
    return ListTile(
      leading: CircleAvatar(
          backgroundImage: AssetImage('images/users.png'),
          backgroundColor: Color(0xFFEAE9E5)
        ),
        title: Text('新增患者'),
        trailing: Icon(Icons.chevron_right),
    );
  }

  Widget _patientListItem(headImage, title, subtitle, datetime, sex) {
    var sexImage;
    if (sex == 0) {
      sexImage = 'images/famale16.png';
    } else {
      sexImage = 'images/male16.png';
    }

    return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(headImage)
        ),
        title: Row(
          children:<Widget>[
            Text(title),
            Container(
              margin:const EdgeInsets.only(left: 10.0),
              child:Image.asset(sexImage)
            )
          ],
        ),
        trailing:Text(
          datetime + ' 扫码关注',
          style: TextStyle(
              fontSize: 12,
              color: Color(0xFF909090)
            ) 
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              fontSize: 12,
              color: Color(0xFF909090)
            ) 
        )
      );
  }

    _patientList(context) {
    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children:ListTile.divideTiles(
        context:context,
        tiles: [
          _patientListItem('images/man.png', '马要满', '135****6685', '2019年3月21日', 1),
          _patientListItem('images/woman.png', '杨子', '信息未完善', '2019年4月4日', 0),
          _patientListItem('images/default.png', '孙刚', '186****1516', '2019年4月13日',1),
          _patientListItem('images/woman.png', '章子怡', '信息未完善', '2019年4月4日', 0),
        ]
      ).toList()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    	body:ListView(
          children: <Widget>[
            // _searchTextEdit(),
            searchTextEdit(hintText:'搜索姓名/备注/手机号'),
            Divider(),
            _newPatientsSection(),
            Divider(),
            _patientList(context)
          ]
        )
    );
  }
}