import 'package:flutter/material.dart';

class PrescriptionOrdersPage extends StatefulWidget {
  @override
  _PrescriptionOrdersPageState createState() => _PrescriptionOrdersPageState();
}


class _PrescriptionOrdersPageState extends State<PrescriptionOrdersPage> {

  Widget _orderItemSection() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: new Column(
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '章子怡',
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      )
                    ),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child:Scaffold(
        appBar: AppBar(
          title: Text('已开处方'),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () { Navigator.pop(context); },
              );
            },
          ),
          bottom:TabBar(
            tabs:<Widget>[
              Tab(text: '全部(2)'),
              Tab(text: '未支付(1)')
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            _orderItemSection(),
            _orderItemSection()       
          ],
        ),

      ),
    );
  }
}