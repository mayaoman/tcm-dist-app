import 'package:flutter/material.dart';
import 'home_page.dart';
import 'patients_page.dart';
import 'myown_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}



class _MainPageState extends State<MainPage> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '患者', '我的'];
  var _pageList;

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }


  Image getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }


  void initData() {
    tabImages = [
      [getTabImage('images/home.png'), getTabImage('images/home_selected.png')],
      [getTabImage('images/unordered_list.png'), getTabImage('images/unordered_list_selected.png')],
      [getTabImage('images/user.png'), getTabImage('images/user_selected.png')]
    ];

     _pageList = [
      new HomePage(),
      new PatientsPage(),
      new MyownPage()
    ];
  }


  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: Colors.red));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff333333)));
    }
  }

  @override
  Widget build(BuildContext context) {
    initData();
    return Scaffold(
      body: _pageList[_tabIndex],
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      bottomNavigationBar:new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: getTabIcon(0), title: getTabTitle(0)),
            new BottomNavigationBarItem(
                icon: getTabIcon(1), title: getTabTitle(1)),
            new BottomNavigationBarItem(
                icon: getTabIcon(2), title: getTabTitle(2)),
          ],
          type: BottomNavigationBarType.fixed,
          
          currentIndex: _tabIndex,
          iconSize: 24.0,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
      ),
    );
  }
}