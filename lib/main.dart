import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() => runApp(TcmDistApp());

class TcmDistApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '研深医药',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MainPage(title: '研深医药'),
    );
  }
}

