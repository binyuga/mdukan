import 'package:flutter/material.dart';
import 'package:mdukan/constants/colors/colors.dart';

class WhiteBoxWidget extends StatelessWidget {
  WhiteBoxWidget({
    Key key,
    this.child,
  }) : super(key: key);
  final Widget child;
  double semicirclewidth, semicircleheight;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    semicirclewidth = width - 69;
    semicircleheight = height / 2 + 20;
    return Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          height: double.maxFinite,
          width: double.maxFinite,
          margin: EdgeInsets.only(right: 20, left: 20, bottom: 70, top: 95),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: child,
        ),
        Hero(
          tag: 'clickTicket',
          child: Container(
            margin: EdgeInsets.only(
              left: semicirclewidth + 21,
              bottom: semicircleheight / 2 + 140,
              top: semicircleheight / 2 + 95,
            ),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    bottomLeft: Radius.circular(90))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 70,
            backgroundColor: kPrimaryColor,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Hero(
                tag: 'AppLogo',
                child: Image(
                  image: AssetImage('images/appicon.png'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
