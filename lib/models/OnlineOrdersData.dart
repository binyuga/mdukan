import 'package:mdukan/models/enums.dart';

class OnlineOrdersData {
  final String orderName;
  final String orderId;
  final double orderBillingAmount;
  final List<String> orderList;
  final OnlineOrderStatus orderStatus;

  OnlineOrdersData(
      {this.orderName,
      this.orderId,
      this.orderBillingAmount,
      this.orderList,
      this.orderStatus});
}
