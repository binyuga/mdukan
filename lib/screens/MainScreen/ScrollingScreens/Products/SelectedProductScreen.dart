import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mdukan/constants/colors/colors.dart';
import 'package:mdukan/constants/lists.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Products/FullDisplayInventoryProductsTab.dart';

class SelectedProductScreen extends StatelessWidget {
  final String productName;
  double headingSize;
  double subheadingSize;
  double textSize;
  double titleSize;

  SelectedProductScreen({Key key, this.productName}) : super(key: key);

  void choicePopupMenu(String s) {
    if (s == 'clearChat1') {
      print('clearChat1');
    }
    if (s == 'track') {
      print('track');
    }
    if (s == 'logout') {
      print('logout');
    }
  }

  @override
  Widget build(BuildContext context) {
    headingSize = MediaQuery.of(context).size.height / 80;
    subheadingSize = MediaQuery.of(context).size.height / 80;
    textSize = MediaQuery.of(context).size.height / 100;
    titleSize = MediaQuery.of(context).size.height / 50;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          PopupMenuButton<String>(
            color: Colors.white.withOpacity(0.9),
            onSelected: choicePopupMenu,
            itemBuilder: (BuildContext cn) {
              return menuChoices
                  .map((String choice) => PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      ))
                  .toList();
            },
          ),
        ],
        backgroundColor: kPrimaryColor,
        title: Text(
          'PRODUCT DETAILS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: titleSize),
        ),
      ),
      body: ProductDetails(
        productName: productName,
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  final String productName;
  double tableTitle;
  double tableText;

  ProductDetails({Key key, this.productName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    tableTitle = MediaQuery.of(context).size.height / 68;
    tableText = MediaQuery.of(context).size.height / 68;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.width / 70,
          horizontal: MediaQuery.of(context).size.width / 50),
      child: ListView(
        children: <Widget>[
          FullDisplayInventoryProductsTab(
            id: '223213213123',
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Restock \nHistory',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 40,
                      fontWeight: FontWeight.w900,
                      color: kPrimaryColor),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xffF9F9F9),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 1.0,
                          spreadRadius: 1.0,
                          offset: Offset(
                              -0.0, 1.0), // shadow direction: bottom right
                        )
                      ],
                    ),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                      'Date',
                                      style: TextStyle(
                                          fontSize: tableTitle,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87),
                                    )),
                                    //color: Colors.red,
                                    padding: EdgeInsets.all(10),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                      'Quantity',
                                      style: TextStyle(
                                          fontSize: tableTitle,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87),
                                    )),
                                    //color: Colors.green,
                                    padding: EdgeInsets.all(10),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        'Price',
                                        style: TextStyle(
                                            fontSize: tableTitle,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87),
                                      ),
                                    ),
                                    //color: Colors.yellow,
                                    padding: EdgeInsets.all(10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Table(
                            children: [
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                              TableRow(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: kPrimaryColor,
                                              width: 1.0,
                                              style: BorderStyle.solid))),
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '18/10/2020',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.red,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                          child: Text(
                                        '1000',
                                        style: TextStyle(
                                            fontSize: tableText,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54),
                                      )),
                                      //color: Colors.green,
                                      padding: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          '2500.00' + ' ₹',
                                          style: TextStyle(
                                              fontSize: tableText,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54),
                                        ),
                                      ),
                                      //color: Colors.yellow,
                                      padding: EdgeInsets.all(10),
                                    ),
                                  ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
