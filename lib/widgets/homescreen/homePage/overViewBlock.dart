import 'package:flutter/material.dart';
import 'package:mdukan/models/enums.dart';
import 'package:mdukan/models/providerModifier.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Home/OverViewDetails.dart';
import 'package:mdukan/widgets/homescreen/homePage/OverViewChips.dart';
import 'package:mdukan/widgets/homescreen/homePage/OverViewTab.dart';
import 'package:provider/provider.dart';

class OverViewBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //todo input of overview from network
    if (Provider.of<ProviderModifier>(context, listen: true)
            .overViewCategories ==
        OverViewCategories.today) {
      Today object = Today();
      Provider.of<ProviderModifier>(context, listen: false).modifyOverViewData(
          offlineCustomers: object.offlineCustomers,
          offlineRevenue: object.offlineSale,
          onlineOrders: object.onlineOrder,
          onlineRevenue: object.onlineSale);
    } else if (Provider.of<ProviderModifier>(context, listen: true)
            .overViewCategories ==
        OverViewCategories.weekAgo) {
      WeekAgo object = WeekAgo();
      Provider.of<ProviderModifier>(context, listen: false).modifyOverViewData(
          offlineCustomers: object.offlineCustomers,
          offlineRevenue: object.offlineSale,
          onlineOrders: object.onlineOrder,
          onlineRevenue: object.onlineSale);
    } else if (Provider.of<ProviderModifier>(context, listen: true)
            .overViewCategories ==
        OverViewCategories.past) {
      Past object = Past();
      Provider.of<ProviderModifier>(context, listen: false).modifyOverViewData(
          offlineCustomers: object.offlineCustomers,
          offlineRevenue: object.offlineSale,
          onlineOrders: object.onlineOrder,
          onlineRevenue: object.onlineSale);
    }

    return Container(
      color: Colors.white,
      //OverView Block
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'OverView',
                  style: TextStyle(
                      color: Colors.grey.shade600, fontWeight: FontWeight.w800),
                ),
                OverViewChips(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OverViewDetails()));
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          ),
          Center(
            child: OverViewTab(
              offlineCustomers: convert(
                  Provider.of<ProviderModifier>(context, listen: true)
                      .overViewData
                      .offlineCustomerNo),
              offlineRevenue: convert(
                  Provider.of<ProviderModifier>(context, listen: true)
                      .overViewData
                      .offlineOrdersRevenue),
              totalSale: convert(
                  Provider.of<ProviderModifier>(context, listen: true)
                      .overViewData
                      .totalSaleNo),
              totalRevenue: convert(
                  Provider.of<ProviderModifier>(context, listen: true)
                      .overViewData
                      .totalSaleRevenue),
              onlineOrders: convert(
                  Provider.of<ProviderModifier>(context, listen: true)
                      .overViewData
                      .onlineOrdersNo),
              onlineRevenue: convert(
                  Provider.of<ProviderModifier>(context, listen: true)
                      .overViewData
                      .onlineOrdersRevenue),
            ),
          ),
        ],
      ),
    );
  }

  String convert(double no) {
    String output;
    List<String> a = List();
    if (no >= 1000) {
      if (no >= 10000) {
        if (no >= 100000) {
          if (no >= 1000000) {
            if (no >= 10000000) {
              if (no >= 100000000) {
                //dashcoti
                a = no.round().toString().split('');
                a.insert(2, ',');
                a.insert(5, ',');
                a.insert(8, ',');
                output = a.join();
                return output;
              } else {
                a = no.round().toString().split('');
                a.insert(1, ',');
                a.insert(4, ',');
                a.insert(7, ',');
                output = a.join();
                return output; //coti
              }
            } else {
              a = no.round().toString().split('');
              a.insert(2, ',');
              a.insert(5, ',');
              output = a.join();
              return output; //dashlaksh
            }
          } else {
            a = no.round().toString().split('');
            a.insert(1, ',');
            a.insert(4, ',');
            output = a.join();
            return output; //lakhs
          }
        } else {
          a = no.round().toString().split('');
          a.insert(2, ',');
          output = a.join();
          return output; //dashajar
        }
      } else {
        a = no.round().toString().split('');
        a.insert(1, ',');
        output = a.join();
        return output; //hajar
      }
    }
    return no.round().toString();
  }
}

class Today {
  double offlineCustomers = 10;
  double offlineSale = 1000;
  double onlineOrder = 2;
  double onlineSale = 200;
}

class WeekAgo {
  double offlineCustomers = 105;
  double offlineSale = 10060;
  double onlineOrder = 20;
  double onlineSale = 2009;
}

class Past {
  double offlineCustomers = 254;
  double offlineSale = 90230;
  double onlineOrder = 214;
  double onlineSale = 20324;
}
