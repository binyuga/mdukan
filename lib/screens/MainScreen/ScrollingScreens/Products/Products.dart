import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mdukan/constants/colors/colors.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Products/AddProduct.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Products/SelectedProductScreen.dart';
import 'package:mdukan/widgets/homescreen/homePage/DisplayInventoryProducts.dart';
import 'package:mdukan/widgets/homescreen/Common/searchBox.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          color: Colors.white,
          width: double.maxFinite,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      margin: EdgeInsets.only(right: 15, left: 15, bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: SearchBox(),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: kPrimaryColor,
                  child: Container(
                    child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: FloatingActionButton(
                          backgroundColor: kPrimaryColor,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddProduct()));
                          },
                          child: Icon(
                            Icons.add,
                            size: 40,
                          ),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: ProductGridLayout(),
      ),
    );
  }
}

class ProductGridLayout extends StatelessWidget {
  const ProductGridLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          DisplayInventoryProductsTab(
            available: true,
            productImage: Image.asset('images/parleyg.png'),
            productName: 'Parle-G Gold Biscuit-200gm',
            productWeight: '200gm',
            category: 'Biscuits',
            price: '25.00',
            brandName: 'Parle',
            listedOnline: true,
            quantity: 85,
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedProductScreen(
                            productName: 'Parle-G Gold Biscuit-200gm',
                          )));
            },
          ),
          DisplayInventoryProductsTab(
            available: true,
            productImage: Image.asset('images/parleyg.png'),
            productName: 'Parle-G Gold Biscuit-200gm',
            productWeight: '200gm',
            category: 'Biscuits',
            price: '25.00',
            brandName: 'Parle',
            listedOnline: false,
            quantity: 85,
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedProductScreen(
                            productName: 'Parle-G Gold Biscuit-200gm',
                          )));
            },
          ),
          DisplayInventoryProductsTab(
            available: true,
            productImage: Image.asset('images/parleyg.png'),
            productName: 'Parle-G Gold Biscuit-200gm',
            productWeight: '200gm',
            category: 'Biscuits',
            price: '25.00',
            brandName: 'Parle',
            listedOnline: false,
            quantity: 85,
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedProductScreen(
                            productName: 'Parle-G Gold Biscuit-200gm',
                          )));
            },
          ),
          DisplayInventoryProductsTab(
            available: false,
            productImage: Image.asset('images/parleyg.png'),
            productName: 'Parle-G Gold Biscuit-200gm',
            productWeight: '200gm',
            category: 'Biscuits',
            price: '25.00',
            brandName: 'Parle',
            listedOnline: true,
            quantity: 85,
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedProductScreen(
                            productName: 'Parle-G Gold Biscuit-200gm',
                          )));
            },
          ),
          DisplayInventoryProductsTab(
            available: false,
            productImage: Image.asset('images/parleyg.png'),
            productName: 'Parle-G Gold Biscuit-200gm',
            productWeight: '200gm',
            category: 'Biscuits',
            price: '25.00',
            brandName: 'Parle',
            listedOnline: true,
            quantity: 85,
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedProductScreen(
                            productName: 'Parle-G Gold Biscuit-200gm',
                          )));
            },
          ),
          DisplayInventoryProductsTab(
            available: true,
            productImage: Image.asset('images/parleyg.png'),
            productName: 'Parle-G Gold Biscuit-200gm',
            productWeight: '200gm',
            category: 'Biscuits',
            price: '25.00',
            brandName: 'Parle',
            listedOnline: false,
            quantity: 85,
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedProductScreen(
                            productName: 'Parle-G Gold Biscuit-200gm',
                          )));
            },
          ),
          DisplayInventoryProductsTab(
            available: false,
            productImage: Image.asset('images/parleyg.png'),
            productName: 'Parle-G Gold Biscuit-200gm',
            productWeight: '200gm',
            category: 'Biscuits',
            price: '25.00',
            brandName: 'Parle',
            listedOnline: false,
            quantity: 85,
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedProductScreen(
                            productName: 'Parle-G Gold Biscuit-200gm',
                          )));
            },
          ),
          DisplayInventoryProductsTab(
            available: true,
            productImage: Image.asset('images/parleyg.png'),
            productName: 'Parle-G Gold Biscuit-200gm',
            productWeight: '200gm',
            category: 'Biscuits',
            price: '25.00',
            brandName: 'Parle',
            listedOnline: true,
            quantity: 85,
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedProductScreen(
                            productName: 'Parle-G Gold Biscuit-200gm',
                          )));
            },
          ),
          DisplayInventoryProductsTab(
            available: true,
            productImage: Image.asset('images/parleyg.png'),
            productName: 'Parle-G Gold Biscuit-200gm',
            productWeight: '200gm',
            category: 'Biscuits',
            price: '25.00',
            brandName: 'Parle',
            listedOnline: true,
            quantity: 85,
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedProductScreen(
                            productName: 'Parle-G Gold Biscuit-200gm',
                          )));
            },
          ),
          DisplayInventoryProductsTab(
            available: true,
            productImage: Image.asset('images/parleyg.png'),
            productName: 'Parle-G Gold Biscuit-200gm',
            productWeight: '200gm',
            category: 'Biscuits',
            price: '25.00',
            brandName: 'Parle',
            listedOnline: true,
            quantity: 85,
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedProductScreen(
                            productName: 'Parle-G Gold Biscuit-200gm',
                          )));
            },
          ),
        ],
      ),
    );
  }
}
