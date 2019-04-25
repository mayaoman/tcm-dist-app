import 'package:flutter/material.dart';
import '../commons/common_widgets.dart';

class MedicalListPage extends StatefulWidget {
  @override
  _MedicalListPageState createState() => _MedicalListPageState();
}


class _MedicalListPageState extends State<MedicalListPage> {

  Widget _yinpianListSection() {
    const tmp = [
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children:<Widget>[
          searchTextEdit(hintText:'输入药物名称'),
          ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children:ListTile.divideTiles(
              context:context,
              tiles: tmp.map((item) {
                String title = item['name'];
                if (item['alias'] != null && item['alias'] != '') {
                  title += ' 别名(' + item['alias'] + ')';
                }
                return ListTile(title: Text(title));
              })
            ).toList()
          )
        ]
      )
    );
  }

  Widget _keliListSection() {
    const tmp = [
      {'name':'矮地茶', 'alias':''},
      {'name':'阿胶', 'alias':'生阿胶'},
      {'name':'百部', 'alias':'百部草'},
      {'name':'白附片', 'alias':''},
      {'name':'白果', 'alias':'银杏'},
      {'name':'百合', 'alias':'南百合'},
      {'name':'白花蛇舌草', 'alias':'白花蛇草'},
      {'name':'白芨', 'alias':''},
      {'name':'败酱草', 'alias':'北败酱草'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children:<Widget>[
          searchTextEdit(hintText:'输入药物名称'),
          ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children:ListTile.divideTiles(
              context:context,
              tiles: tmp.map((item) {
                String title = item['name'];
                if (item['alias'] != null && item['alias'] != '') {
                  title += ' 别名(' + item['alias'] + ')';
                }
                return ListTile(title: Text(title));
              })
            ).toList()
          )
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child:Scaffold(
        appBar: AppBar(
          title: Text('医药名录'),
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
          bottom:TabBar(
            tabs:<Widget>[
              Tab(text: '颗粒名录'),
              Tab(text: '饮片名录')
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            _keliListSection(),
            _yinpianListSection(),       
          ],
        ),

      ),
    );
  }
}