import 'package:flutter/material.dart';
import 'package:mdukan/models/enums.dart';
import 'package:mdukan/models/providerModifier.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Home/OnlineOrders.dart';
import 'package:mdukan/widgets/homescreen/homePage/OnlineOrdersChips.dart';
import 'package:mdukan/widgets/homescreen/homePage/OnlineOrdersList.dart';
import 'package:provider/provider.dart';

class OnlineOrdersBlock extends StatefulWidget {
  @override
  _OnlineOrdersBlockState createState() => _OnlineOrdersBlockState();
}

class _OnlineOrdersBlockState extends State<OnlineOrdersBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      //Online orders
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Online Orders',
                  style: TextStyle(
                      color: Colors.grey.shade600, fontWeight: FontWeight.w800),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnlineOrders()));
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 2, bottom: 8, right: 10),
            child: OnlinOrdersChips(),
          ),
          OnlineOrdersList()
        ],
      ),
      color: Colors.white,
    );
  }

  @override
  void initState() {
    for (int i = 0; i < 10; i++) {
      Provider.of<ProviderModifier>(context, listen: false)
          .addDataOfOnlineOrders(
              orderName: Pending().orderedName,
              orderId: Pending().ordereId,
              orderDetails: Pending().orderList,
              orderStatus: Pending().orderStatus,
              billingAmount: Pending().orderBillingAmount);
    }
    for (int i = 0; i < 7; i++) {
      Provider.of<ProviderModifier>(context, listen: false)
          .addDataOfOnlineOrders(
              orderName: CancelledData().orderedName,
              orderId: CancelledData().ordereId,
              orderDetails: CancelledData().orderList,
              orderStatus: CancelledData().orderStatus,
              billingAmount: CancelledData().orderBillingAmount);
    }
    for (int i = 1; i < 12; i++) {
      Provider.of<ProviderModifier>(context, listen: false)
          .addDataOfOnlineOrders(
              orderName: InProcessData().orderedName,
              orderId: InProcessData().ordereId,
              orderDetails: InProcessData().orderList,
              orderStatus: InProcessData().orderStatus,
              billingAmount: InProcessData().orderBillingAmount);
    }
    Provider.of<ProviderModifier>(context, listen: false).addDataOfOnlineOrders(
        orderName: CompletedData().orderedName,
        orderId: CompletedData().ordereId,
        orderDetails: CompletedData().orderList,
        orderStatus: CompletedData().orderStatus,
        billingAmount: CompletedData().orderBillingAmount);
  }
}

class CancelledData {
  String orderedName = "Vishal More";
  String ordereId = '123434';
  double orderBillingAmount = 1200.34;
  List<String> orderList = [
    'Palrey G Gold 200 gram',
    'RINBar',
    'decor',
    'Palrey G',
    'RINBar',
    'decor'
  ];
  OnlineOrderStatus orderStatus = OnlineOrderStatus.cancelled;
}

class Pending {
  String orderedName = "Vishal More";
  String ordereId = '123434';
  double orderBillingAmount = 1400.34;
  List<String> orderList = [
    'Palrey G Gold 200 gram',
    'RINBar',
    'decor',
    'Palrey G',
    'RINBar',
    'decor'
  ];
  OnlineOrderStatus orderStatus = OnlineOrderStatus.pending;
}

class InProcessData {
  String orderedName = "Vishal More";
  String ordereId = '123434';
  double orderBillingAmount = 3200.34;
  List<String> orderList = [
    'Palrey G Gold 200 gram',
    'RINBar',
    'decor',
    'Palrey G',
    'RINBar',
    'decor'
  ];
  OnlineOrderStatus orderStatus = OnlineOrderStatus.inProcess;
}

class CompletedData {
  String orderedName = "Vishal More";
  String ordereId = '123434';
  double orderBillingAmount = 1200.34;
  List<String> orderList = [
    'Palrey G Gold 200 gram',
    'RINBar',
    'decor',
    'Palrey G',
    'RINBar',
    'decor'
  ];
  OnlineOrderStatus orderStatus = OnlineOrderStatus.completed;
}
