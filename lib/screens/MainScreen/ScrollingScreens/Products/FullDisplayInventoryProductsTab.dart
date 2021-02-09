import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mdukan/constants/colors/colors.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Products/EditSelectedProduct.dart';

class FullDisplayInventoryProductsTab extends StatelessWidget {
  bool available = false;
  String productName = 'Parle G 200gm';
  String brandName = 'Parley';
  String productWeight = '200gm';
  String category = 'Biscuits';
  double buyingPrice = 4;
  double quantity = 100;
  double sellingPrice = 8;
  String expiryDate = '10/08/2020';
  bool listedOnline = true;
  Image productImage = Image.asset('images/parleyg.png');
  final String id;
  double headingSize;
  double subheadingSize;
  double textSize;

  int quantityProportion;

  FullDisplayInventoryProductsTab({
    Key key,
    @required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (quantity.round() < 1000) {
      quantityProportion = 40;
    } else if (quantity.round() < 10000) {
      quantityProportion = 50;
    } else if (quantity.round() < 100000) {
      quantityProportion = 60;
    } else if (quantity.round() < 1000000) {
      quantityProportion = 70;
    } else {
      quantityProportion = 90;
    }

    headingSize = MediaQuery.of(context).size.height / 60;
    subheadingSize = MediaQuery.of(context).size.height / 68;
    textSize = MediaQuery.of(context).size.height / 80;
    return Container(
      height: MediaQuery.of(context).size.height / 3.4,
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 9,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: listedOnline
                            ? Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.amber.shade600,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(15))),
                                child: listedOnline
                                    ? Center(
                                        child: Text(
                                          'Listed Online',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: textSize,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    : null,
                              )
                            : null,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        EditSelectedProduct()));
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.edit,
                                    size: subheadingSize,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: textSize,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Container(
                                child: Center(
                                  child: productImage,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    id,
                                    style: TextStyle(
                                        fontFamily: 'LibreBarcode',
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                30),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 1, horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Text(
                                      productName, //todo Max limit 13 char
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87,
                                          fontSize: headingSize),
                                    ),
                                  ),
                                ),
                                // Text(
                                //   'Product Description \t ' + productWeight,
                                //   style: TextStyle(
                                //       fontSize: 12,
                                //       fontWeight: FontWeight.w400,
                                //       color: Colors.grey),
                                // ),
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              'Brand ',
                                              style: TextStyle(
                                                  fontSize: subheadingSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              brandName,
                                              style: TextStyle(
                                                  fontSize: subheadingSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              'Weight ',
                                              style: TextStyle(
                                                  fontSize: subheadingSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              productWeight,
                                              style: TextStyle(
                                                  fontSize: subheadingSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              "Buying Price",
                                              style: TextStyle(
                                                  fontSize: subheadingSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              buyingPrice.toString(),
                                              style: TextStyle(
                                                  fontSize: subheadingSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              "Selling Price",
                                              style: TextStyle(
                                                  fontSize: subheadingSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              sellingPrice.toString(),
                                              style: TextStyle(
                                                  fontSize: subheadingSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              "Exp. Date",
                                              style: TextStyle(
                                                  fontSize: subheadingSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              expiryDate,
                                              style: TextStyle(
                                                  fontSize: subheadingSize,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "In Stock ",
                                          style: TextStyle(
                                              fontSize: subheadingSize,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: quantityProportion < 90
                                              ? Row(
                                                  children: <Widget>[
                                                    Text(
                                                      quantity
                                                          .round()
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height /
                                                              quantityProportion,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color:
                                                              Colors.black87),
                                                    ),
                                                    Text(
                                                      "\t units",
                                                      style: TextStyle(
                                                          fontSize:
                                                              subheadingSize,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Colors.black54),
                                                    ),
                                                  ],
                                                )
                                              : Text(
                                                  'Quantity above limit !',
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              80,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: Colors.redAccent),
                                                  textAlign: TextAlign.center,
                                                ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ), //todo standard size image input
          ),
          Expanded(
              flex: 1,
              child: Container(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: available ? Colors.lightGreen : Colors.red[700],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: available
                        ? Center(
                            child: Text(
                              'In Stock',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textSize,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        : Center(
                            child: Text('Out off Stock',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: textSize,
                                    fontWeight: FontWeight.bold)),
                          ),
                  ),
                ),
              ) //todo standard size image input
              ),
        ],
      ),
    );
  }
}
