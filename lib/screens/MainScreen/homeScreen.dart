import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mdukan/constants/lists.dart';
import 'package:mdukan/constants/colors/colors.dart';
import 'package:mdukan/models/providerModifier.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Bills/BillsPage.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Orders/OrdersPage.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Products/Products.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Scan/ScanningPage.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Home/homePage.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final screenId = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageNo = 2;

  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: _pageNo,
    );
  }

  @override
  Widget build(BuildContext context) {
    int pageNo = _pageNo;
    return DefaultTabController(
      length: 5,
      initialIndex: _pageNo,
      child: Scaffold(
        backgroundColor: Colors.white,
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
          title: Text('mDukan'),
        ),
        drawer: Drawer(
          semanticLabel: 'Sonu Enterprizes',
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("images/appicon.png"),
                      radius: 30,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Dukan Enterprizes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    Text(
                      'Retailer',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('My Profile'),
              ),
              ListTile(
                title: Text('Store Details'),
              ),
              ListTile(
                title: Text('Settings'),
              ),
              ListTile(
                title: Text('Log out'),
              )
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 45,
          index: Provider.of<ProviderModifier>(context, listen: true).pageNo,
          color: kPrimaryColor,
          backgroundColor: Colors.white,
          buttonBackgroundColor: kPrimaryColor,
          items: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 5),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.image,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    'Products',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 5),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.straighten,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    'Scan',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 5),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 5),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    'Orders',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 5),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.account_balance_wallet,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    'Bills',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 500),
                curve: Curves.ease); //Page View Handler on button tap
          },
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (newPage) {
            pageNo = newPage;
          },
          children: <Widget>[
            ProductsPage(),
            ScanningPage(),
            homePage(),
            OrdersPage(),
            BillsPage(),
          ],
        ),
      ),
    );
  }

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
}
