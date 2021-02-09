import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mdukan/constants/colors/colors.dart';

class OverViewItemContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 1.0,
            spreadRadius: 1.0,
            offset: Offset(-0.0, 1.0), // shadow direction: bottom right
          )
        ],
      ),
      height: 130,
      width: 100,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset(
                "images/parleyg.png"), //todo standard size image input
          ),
          Expanded(
              flex: 1,
              child: Text(
                'Parley G 250gm',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
