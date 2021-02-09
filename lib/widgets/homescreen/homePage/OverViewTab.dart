import 'package:flutter/material.dart';
import 'package:mdukan/models/providerModifier.dart';
import 'package:provider/provider.dart';

class OverViewTab extends StatelessWidget {
  final String offlineCustomers;
  final String offlineRevenue;
  final String totalSale;
  final String totalRevenue;
  final String onlineOrders;
  final String onlineRevenue;

  const OverViewTab(
      {Key key,
      this.offlineCustomers,
      this.offlineRevenue,
      this.totalSale,
      this.totalRevenue,
      this.onlineOrders,
      this.onlineRevenue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 1.0,
              spreadRadius: 1.0,
              offset: Offset(-0.0, 1.0), // shadow direction: bottom right
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "OFFLINE",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                              fontWeight: FontWeight.w700),
                        )),
                    Text(
                      'Customers',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      offlineCustomers,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w900,
                          fontSize: Provider.of<ProviderModifier>(context,
                                  listen: true)
                              .pricesAndQuantityFontSizeOfflineCustomers),
                    ),
                    Text(
                      'Revenue (₹)',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      offlineRevenue,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w900,
                          fontSize: Provider.of<ProviderModifier>(context,
                                  listen: true)
                              .pricesAndQuantityFontSizeOfflineRevenue),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      offset:
                          Offset(-0.0, 1.0), // shadow direction: bottom right
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "TOTAL",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Sale',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      totalSale,
                      style: TextStyle(
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.w900,
                          fontSize: Provider.of<ProviderModifier>(context,
                                  listen: true)
                              .pricesAndQuantityFontSizeTotalCustomers),
                    ),
                    Text(
                      'Revenue (₹)',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      totalRevenue,
                      style: TextStyle(
                          color: Colors.green, // Colors.black54,
                          fontWeight: FontWeight.w900,
                          fontSize: Provider.of<ProviderModifier>(context,
                                  listen: true)
                              .pricesAndQuantityFontSizeTotalRevenue),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "ONLINE",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.green,
                              fontWeight: FontWeight.w700),
                        )),
                    Text(
                      'Orders',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      onlineOrders,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w900,
                          fontSize: Provider.of<ProviderModifier>(context,
                                  listen: true)
                              .pricesAndQuantityFontSizeOnlineCustomers),
                    ),
                    Text(
                      'Revenue (₹)',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      onlineRevenue,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w900,
                          fontSize: Provider.of<ProviderModifier>(context,
                                  listen: true)
                              .pricesAndQuantityFontSizeOnlineRevenue),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
