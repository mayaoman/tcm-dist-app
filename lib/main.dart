import 'package:flutter/material.dart';
import 'pages/main_page.dart';
import 'pages/mycard_page.dart';
import 'pages/medical_list_page.dart';
import 'pages/public_notice_page.dart';
import 'pages/prescription_orders_page.dart';

void main() => runApp(TcmDistApp());

class TcmDistApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '康珍堂',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor:Colors.grey[50],
        primaryTextTheme: new TextTheme(
          body1: new TextStyle (
            color:Color(0xFF333333)
          )
        )
      ),
      // home: MainPage(title: '下医仇家'),
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(title: '康珍堂'),
        '/mycard': (context) => MyCardPage(),
        '/medical_list':(context) => MedicalListPage(),
        '/public_notice':(context) => PublicNoticePage(),
        '/prescription_orders':(context) => PrescriptionOrdersPage(),
      }
    );
  }
}

