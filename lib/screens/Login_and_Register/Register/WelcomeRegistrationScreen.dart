import 'package:flutter/material.dart';
import 'package:mdukan/constants/colors/colors.dart';
import 'package:mdukan/screens/Login_and_Register/Login/LoginVerificationScreen.dart';
import 'package:mdukan/screens/Login_and_Register/Register/MobileNoRegistratation.dart';
import 'package:mdukan/screens/Login_and_Register/Register/RegistrationVerificationScreen.dart';
import 'package:mdukan/widgets/LoginAndRgistrationScreen/LoginAndRegisterButton.dart';
import 'package:mdukan/widgets/LoginAndRgistrationScreen/WhiteBoxWidget.dart';

class WelcomeRegistrationScreen extends StatelessWidget {
  final screenId = 'WelcomeRegistrationScreen';
  double semicirclewidth, semicircleheight;

  String fullName, storeName, storeAddress;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    semicirclewidth = width - 69;
    semicircleheight = height / 2 + 20;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: kPrimaryColor,
        body: Container(
            width: double.maxFinite,
            color: kPrimaryColor,
            child: WhiteBoxWidget(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 70),
                        child: Text(
                          'Registration',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: kPrimaryColor),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.only(right: 25, left: 25, top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                            labelText: 'Full Name',
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: kPrimaryColor)),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.0)),
                                            ),
                                            fillColor: Colors.white,
                                            filled: true)
                                        .copyWith(
                                            // errorText: lphone
                                            //     ? "We need Contact number for contact and Record "
                                            //     : null,
                                            ),
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 13),
                                    onChanged: (value) {
                                      // phone = value;
                                      // if (value == '') {
                                      //   setState(() {
                                      //     lphone = true;
                                      //   });
                                      // } else {
                                      //   setState(() {
                                      //     lphone = false;
                                      //   });
                                      // }
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: TextField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                            labelText: 'Store Name',
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: kPrimaryColor)),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.0)),
                                            ),
                                            fillColor: Colors.white,
                                            filled: true)
                                        .copyWith(
                                            // errorText: lphone
                                            //     ? "We need Contact number for contact and Record "
                                            //     : null,
                                            ),
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 13),
                                    onChanged: (value) {
                                      storeName = value;
                                      // phone = value;
                                      // if (value == '') {
                                      //   setState(() {
                                      //     lphone = true;
                                      //   });
                                      // } else {
                                      //   setState(() {
                                      //     lphone = false;
                                      //   });
                                      // }
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                            labelText: 'Store Address',
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: kPrimaryColor)),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.0)),
                                            ),
                                            fillColor: Colors.white,
                                            filled: true)
                                        .copyWith(
                                            // errorText: lphone
                                            //     ? "We need Contact number for contact and Record "
                                            //     : null,
                                            ),
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 13),
                                    onChanged: (value) {
                                      storeAddress = value;
                                      // phone = value;
                                      // if (value == '') {
                                      //   setState(() {
                                      //     lphone = true;
                                      //   });
                                      // } else {
                                      //   setState(() {
                                      //     lphone = false;
                                      //   });
                                      // }
                                    },
                                  ),
                                ),
                                Container(
                                    child: LoginAndRegisterButton(
                                  label: 'Register',
                                  onClick: () {
                                    Navigator.pushNamed(
                                        context, 'MobileNoRegistration');
                                  },
                                )),
                                Container(
                                  child: Text(
                                    "By using mDukan, you agree to mDukan's Terms of \n Use and Privacy Policy.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
