import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() => runApp(TcmDistApp());

class TcmDistApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '下医仇家',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor:Colors.grey[50],
        primaryTextTheme: new TextTheme(
          body1: new TextStyle (
            color:Color(0x333333ff)
          )
        )
      ),
      home: MainPage(title: '下医仇家'),
    );
  }
}

