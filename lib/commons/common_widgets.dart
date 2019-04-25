import 'package:flutter/material.dart';

Widget searchTextEdit({hintText:''}) {
  return Container(
    padding: const EdgeInsets.all(12.0),
    child:Container(
    // padding: const EdgeInsets.all(8.0),
    alignment: Alignment.center,
    height: 45.0,
    decoration: new BoxDecoration(
        color: Colors.grey[200],
        border: new Border.all(color: Colors.grey[400], width: 1.0),
        borderRadius: new BorderRadius.circular(12.0)),
    child: TextFormField(
      decoration: InputDecoration(
        hintText:hintText,
        contentPadding: new EdgeInsets.symmetric(vertical: 8.0),
        border: InputBorder.none,
        prefixIcon:Padding(
          padding: EdgeInsets.all(0.0),
          child: Icon(
            Icons.search,
            color: Colors.grey,
          ), 
        ),
      ),
    )
  )
  );
}