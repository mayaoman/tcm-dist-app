import 'package:flutter/material.dart';

class MyCardPage extends StatelessWidget {


  Widget _headImage() {
	return CircleAvatar(
	  radius:45.0,
      backgroundImage: AssetImage('images/doctor_woman.png'),
      backgroundColor: Color(0xffffffff)
    );
  }

  Widget _textSection(text, {double marginTop=12, double fontSize=14.0, fontWeight=FontWeight.normal}) {
	return  Container(
      margin: EdgeInsets.only(top: marginTop),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight:fontWeight,
          color: Color(0xff333333)
        ) 
      )
    );
  }

  Widget _qrCodeSection() {
    return Image.asset(
      'images/qrcode.gif',
      width: 90,
      height:90,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('我的名片'),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () { Navigator.pop(context); },
              );
            },
          ),
        ),
        body: Container(
        	padding: EdgeInsets.all(30.0),
        	constraints: BoxConstraints.expand(),
	    	decoration: BoxDecoration(
	          image: DecorationImage(
	            image: AssetImage("images/mycard_bg2.jpg"),
	            fit: BoxFit.cover,
	          ),
	        ),
	        child:Column(
    			children:<Widget>[
    				_headImage(),
    				_textSection('黄晓明', fontSize:22, fontWeight:FontWeight.bold),
            _textSection('内科 主治医师', fontSize:18),
            _textSection('济阳县中医医院', fontSize:18),
            Divider(height:50.0, color:Color(0xffffffff)),
            _qrCodeSection(),
            _textSection('长按识别二维码关注我', fontSize:16),
            _textSection('在家复诊咨询拿药，门诊信息及时推送', fontSize:16),
    			],
    		),
    	)
    );
  }
}

