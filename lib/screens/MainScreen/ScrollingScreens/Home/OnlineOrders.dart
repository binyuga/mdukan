import 'package:flutter/material.dart';
import 'package:mdukan/models/enums.dart';
import 'package:mdukan/widgets/homescreen/homePage/OnlineOrderDisplayTab.dart';

class OnlineOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Orders'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          OnlineOrderDisplayTab(
              orderedName: "Vishal More",
              ordereId: '123434',
              orderBillingAmount: 1200.43,
              orderList: ['Palrey G', 'RINBar', 'decor'],
              orderStatus: OnlineOrderStatus.completed),
        ],
      ),
    );
  }
}
