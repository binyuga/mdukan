import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:mdukan/constants/colors/colors.dart';
import 'package:mdukan/widgets/homescreen/homePage/onlineOrdersBlock.dart';
import 'package:mdukan/widgets/homescreen/homePage/overViewBlock.dart';
import 'package:mdukan/widgets/homescreen/homePage/popularProductsBlock.dart';
import 'package:mdukan/widgets/homescreen/Common/searchBox.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 800, minHeight: 100),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 1, bottom: 10, right: 5, left: 5),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Container(
                    margin: EdgeInsets.only(right: 25, left: 25, bottom: 0),
                    child: SearchBox())),
            PopularProductsBlock(),
            OverViewBlock(),
            OnlineOrdersBlock(),
          ],
        ),
      ),
    );
  }
}
