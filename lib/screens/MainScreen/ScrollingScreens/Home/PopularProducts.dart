import 'package:flutter/material.dart';
import 'package:mdukan/widgets/homescreen/homePage/PopularProductsTab.dart';

class PopularProductor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Popular Product'),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: <Widget>[
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
        ));
  }
}
