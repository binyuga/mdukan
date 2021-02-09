import 'package:flutter/material.dart';

class PopularProductsTab extends StatelessWidget {
  final String productName;
  final String productWeight;
  final String price;
  final Image productImage;
  double titleSize, headingSize, subHeadingSize, textSize;

  PopularProductsTab(
      {Key key,
      this.productName,
      this.productWeight,
      this.price,
      this.productImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    titleSize = MediaQuery.of(context).size.height / 50;
    headingSize = MediaQuery.of(context).size.height / 70;
    subHeadingSize = MediaQuery.of(context).size.height / 75;
    textSize = MediaQuery.of(context).size.height / 80;
    return Container(
      width: MediaQuery.of(context).size.width / 3.8,
      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 8),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 1.0,
            spreadRadius: 1.0,
            offset: Offset(-0.0, 1.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Center(
                child: productImage,
              ), //todo standard size image input
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          productName, //todo Max limit 13 char
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: headingSize),
                        ),
                      ),
                      Text(
                        productWeight,
                        style: TextStyle(
                            fontSize: subHeadingSize,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ), //todo standard size image input
            ),
            Expanded(
                flex: 1,
                child: Container(
                  // margin: EdgeInsets.only(top: 1, bottom: 1),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.7),
                          //     blurRadius: 1.0,
                          //     spreadRadius: 1.0,
                          //     offset: Offset(
                          //         -0.0, 1.0), // shadow direction: bottom right
                          //   )
                          // ],
                          color: Colors.lightGreen,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Text(
                        "Rs. " + price,
                        style: TextStyle(
                            fontSize: textSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ) //todo standard size image input
                ),
          ],
        ),
      ),
    );
  }
}
