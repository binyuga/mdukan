import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mdukan/constants/colors/colors.dart';

class DisplayInventoryProductsTab extends StatelessWidget {
  final bool available;
  final String productName;
  final String brandName;
  final String productWeight;
  final String category;
  final int quantity;
  final String price;
  final bool listedOnline;
  final Image productImage;
  final Function onClick;
  double headingSize;
  double subheadingSize;
  double textSize;

  DisplayInventoryProductsTab({
    Key key,
    @required this.available,
    @required this.productName,
    @required this.productWeight,
    @required this.category,
    @required this.price,
    @required this.productImage,
    @required this.listedOnline,
    @required this.brandName,
    @required this.quantity,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    headingSize = MediaQuery.of(context).size.height / 80;
    subheadingSize = MediaQuery.of(context).size.height / 80;
    textSize = MediaQuery.of(context).size.height / 100;
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0xffF9F9F9),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.grey.withOpacity(0.1),
            //   blurRadius: 1.0,
            //   spreadRadius: 1.0,
            //   offset: Offset(-0.0, 1.0), // shadow direction: bottom right
            // )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: listedOnline
                          ? Container(
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.amber.shade600,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              child: listedOnline
                                  ? Center(
                                      child: Text(
                                        'Listed Online',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: textSize,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  : null,
                            )
                          : null,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: Center(
                        child: productImage,
                      ),
                    ),
                  ),
                ],
              ), //todo standard size image input
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        productName, //todo Max limit 13 char
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                            fontSize: headingSize),
                      ),
                    ),
                    Text(
                      'Description : ' + productWeight,
                      style: TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                    Text(
                      'Brand : ' + brandName,
                      style: TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                    Text(
                      "Category : " + category,
                      style: TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                    Text(
                      "Qty : " + quantity.toString() + ' units',
                      style: TextStyle(
                          fontSize: subheadingSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    )
                  ],
                ),
              ), //todo standard size image input
            ),
            Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 70,
                          height: 20,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: available
                                  ? Colors.lightGreen
                                  : Colors.red[700],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: available
                              ? Center(
                                  child: Text(
                                    'In Stock',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: textSize,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              : Center(
                                  child: Text('Out of Stock',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: textSize,
                                          fontWeight: FontWeight.w600)),
                                ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                // BoxShadow(
                                //   color: Colors.grey.withOpacity(0.7),
                                //   blurRadius: 1.0,
                                //   spreadRadius: 1.0,
                                //   offset: Offset(
                                //       -0.0, 1.0), // shadow direction: bottom right
                                // )
                              ],
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15))),
                          child: Text(
                            " ₹ " + price,
                            style: TextStyle(
                                fontSize: headingSize,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ) //todo standard size image input
                ),
          ],
        ),
      ),
    );
  }
}
