import 'package:flutter/material.dart';
import 'package:mdukan/models/OnlineOrdersData.dart';
import 'package:mdukan/models/enums.dart';
import 'package:mdukan/models/providerModifier.dart';
import 'package:mdukan/widgets/homescreen/homePage/OnlineOrderDisplayTab.dart';
import 'package:provider/provider.dart';

class OnlineOrdersList extends StatelessWidget {
  OnlineOrdersList({
    Key key,
  }) : super(key: key);
  List<OnlineOrderDisplayTab> displayList = [];
  @override
  Widget build(BuildContext context) {
    if (Provider.of<ProviderModifier>(context, listen: true)
            .onlineOrderStatus ==
        OnlineOrderStatus.pending) {
      List<OnlineOrderDisplayTab> temporary = [];
      List<OnlineOrdersData> pendingdata =
          Provider.of<ProviderModifier>(context, listen: true).pending;
      for (OnlineOrdersData i in pendingdata) {
        temporary.add(OnlineOrderDisplayTab(
            orderedName: i.orderName,
            ordereId: i.orderId,
            orderBillingAmount: i.orderBillingAmount,
            orderList: i.orderList,
            orderStatus: i.orderStatus));
      }
      displayList = temporary;
    } else if (Provider.of<ProviderModifier>(context, listen: true)
            .onlineOrderStatus ==
        OnlineOrderStatus.inProcess) {
      List<OnlineOrderDisplayTab> temporary = [];
      List<OnlineOrdersData> inprocessdata =
          Provider.of<ProviderModifier>(context, listen: true).inProcess;
      for (OnlineOrdersData i in inprocessdata) {
        temporary.add(OnlineOrderDisplayTab(
            orderedName: i.orderName,
            ordereId: i.orderId,
            orderBillingAmount: i.orderBillingAmount,
            orderList: i.orderList,
            orderStatus: i.orderStatus));
      }
      displayList = temporary;
    } else if (Provider.of<ProviderModifier>(context, listen: true)
            .onlineOrderStatus ==
        OnlineOrderStatus.completed) {
      List<OnlineOrderDisplayTab> temporary = [];
      List<OnlineOrdersData> completeddata =
          Provider.of<ProviderModifier>(context, listen: true).completed;
      for (OnlineOrdersData i in completeddata) {
        temporary.add(OnlineOrderDisplayTab(
            orderedName: i.orderName,
            ordereId: i.orderId,
            orderBillingAmount: i.orderBillingAmount,
            orderList: i.orderList,
            orderStatus: i.orderStatus));
      }
      displayList = temporary;
    } else if (Provider.of<ProviderModifier>(context, listen: true)
            .onlineOrderStatus ==
        OnlineOrderStatus.cancelled) {
      List<OnlineOrderDisplayTab> temporary = [];
      List<OnlineOrdersData> cancelleddata =
          Provider.of<ProviderModifier>(context, listen: true).cancelled;
      for (OnlineOrdersData i in cancelleddata) {
        temporary.add(OnlineOrderDisplayTab(
            orderedName: i.orderName,
            ordereId: i.orderId,
            orderBillingAmount: i.orderBillingAmount,
            orderList: i.orderList,
            orderStatus: i.orderStatus));
      }
      displayList = temporary;
    }
    return Container(
      height: 400,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: displayList,
      ),
    );
  }
}
