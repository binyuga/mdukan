import 'package:flutter/material.dart';
import 'package:mdukan/screens/MainScreen/ScrollingScreens/Home/PopularProducts.dart';
import 'package:mdukan/widgets/homescreen/homePage/PopularProductsTab.dart';

class PopularProductsBlock extends StatelessWidget {
  double semiCircleWidth;

  double semiCircleHeight;
  double titleSize, headingSize, subHeadingSize, textSize;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    semiCircleWidth = width - 69;
    semiCircleHeight = height / 2 + 20;
    titleSize = MediaQuery.of(context).size.height / 55;
    headingSize = MediaQuery.of(context).size.height / 60;
    subHeadingSize = MediaQuery.of(context).size.height / 75;
    textSize = MediaQuery.of(context).size.height / 80;

    return Container(
      //Popular Products
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Popular Products',
                  style: TextStyle(
                      fontSize: titleSize,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w800),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PopularProductor()));
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: headingSize,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 6.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold biscuit 200gm',
                  productWeight: '200gm',
                  price: '10.00',
                ),
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold d',
                  productWeight: '200gm',
                  price: '10.00',
                ),
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold..',
                  productWeight: '200gm',
                  price: '10.00',
                ),
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold..',
                  productWeight: '200gm',
                  price: '10.00',
                ),
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold..',
                  productWeight: '200gm',
                  price: '10.00',
                ),
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold..',
                  productWeight: '200gm',
                  price: '10.00',
                ),
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold..',
                  productWeight: '200gm',
                  price: '10.00',
                ),
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold..',
                  productWeight: '200gm',
                  price: '10.00',
                ),
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold..',
                  productWeight: '200gm',
                  price: '10.00',
                ),
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold..',
                  productWeight: '200gm',
                  price: '10.00',
                ),
                PopularProductsTab(
                  productImage: Image.asset('images/parleyg.png'),
                  productName: 'Parle G Gold..',
                  productWeight: '200gm',
                  price: '10.00',
                ),
              ],
            ),
          )
        ],
      ),
      color: Colors.white,
    );
  }
}
