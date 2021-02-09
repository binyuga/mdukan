import 'package:flutter/cupertino.dart';

class OverViewData {
  final double offlineCustomerNo;
  final double offlineOrdersRevenue;
  final double totalSaleNo;
  final double totalSaleRevenue;
  final double onlineOrdersNo;
  final double onlineOrdersRevenue;

  OverViewData(
      @required this.offlineCustomerNo,
      @required this.offlineOrdersRevenue,
      @required this.totalSaleNo,
      @required this.totalSaleRevenue,
      @required this.onlineOrdersNo,
      @required this.onlineOrdersRevenue);
}
