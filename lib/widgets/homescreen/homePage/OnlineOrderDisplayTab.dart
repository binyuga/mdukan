import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mdukan/models/enums.dart';

class OnlineOrderDisplayTab extends StatelessWidget {
  final String orderedName;
  final String ordereId;
  final List<String> orderList;
  final String orderLocation; //todo location
  final OnlineOrderStatus orderStatus;
  final double orderBillingAmount;

  OnlineOrderDisplayTab(
      {Key key,
      @required this.orderedName,
      @required this.ordereId,
      @required this.orderList,
      this.orderLocation,
      @required this.orderStatus,
      @required this.orderBillingAmount})
      : super(key: key);

  Color orderStatusColor;
  @override
  Widget build(BuildContext context) {
    if (orderStatus == OnlineOrderStatus.pending) {
      orderStatusColor = Colors.yellow;
    } else if (orderStatus == OnlineOrderStatus.inProcess) {
      orderStatusColor = Colors.blue;
    } else if (orderStatus == OnlineOrderStatus.completed) {
      orderStatusColor = Colors.green;
    } else if (orderStatus == OnlineOrderStatus.cancelled) {
      orderStatusColor = Colors.red;
    } else {
      orderStatusColor = Colors.grey;
    }
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 1.0,
            spreadRadius: 1.0,
            offset: Offset(-0.0, 1.0), // shadow direction: bottom right
          )
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  orderedName,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
                Text(
                  'Order id.: $ordereId',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400),
                ),
                Container(
                    child: Text(
                  convertBillItemsForOnlineOrdersDisplayTab(orderList),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Text(setStatus(orderStatus),
                        style: TextStyle(
                            color: orderStatusColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600))),
                Container(
                  child: Wrap(
                    children: <Widget>[
                      Text(
                        '₹ ' + '$orderBillingAmount',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  String setStatus(OnlineOrderStatus value) {
    if (OnlineOrderStatus.pending == value) {
      return "Pending";
    } else if (OnlineOrderStatus.inProcess == value) {
      return 'In Process';
    } else if (OnlineOrderStatus.completed == value) {
      return 'Completed';
    } else if (OnlineOrderStatus.cancelled == value) {
      return 'Cancelled';
    } else {
      return '';
    }
  }

  String convertBillItemsForOnlineOrdersDisplayTab(List<String> bill) {
    String output;
    int items = bill.length - 1;
    if (bill.length > 1) {
      output = bill.elementAt(0) + '  +' + '$items';
    } else {
      output = bill.join();
    }
    return output;
  }
}
