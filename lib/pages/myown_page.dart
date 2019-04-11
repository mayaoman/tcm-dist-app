import 'package:flutter/material.dart';

class MyownPage extends StatefulWidget {
  @override
  _MyownPageState createState() => _MyownPageState();
}


class _MyownPageState extends State<MyownPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    	body:Center(
          child: Text('myown page')
        ),
    );
  }
}