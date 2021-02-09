import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mdukan/constants/colors/colors.dart';
import 'package:mdukan/widgets/LoginAndRgistrationScreen/LoginAndRegisterButton.dart';
import 'package:mdukan/widgets/LoginAndRgistrationScreen/WhiteBoxWidget.dart';

class WelcomeLoginScreen extends StatelessWidget {
  final screenId = 'WelcomeLoginScreen';
  double semicirclewidth, semicircleheight;
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
                          'Welcome !',
                          style: TextStyle(
                              fontFamily: 'MonsterratExtraBold',
                              fontSize: 50,
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
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700,
                                          color: kPrimaryColor),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: TextField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                            labelText:
                                                'Enter registered mobile number to log in ',
                                            prefixText: '+91 ',
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
                                  child: LoginAndRegisterButton(
                                    label: 'Log In',
                                    onClick: () {
                                      Navigator.pushNamed(
                                          context, 'LoginVerificationScreen');
                                    },
                                  ),
                                ),
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
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text('Not registered yet ?'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LoginAndRegisterButton(
                                    label: 'Register Now',
                                    onClick: () {
                                      Navigator.pushNamed(
                                          context, 'WelcomeRegistrationScreen');
                                    },
                                  ),
                                ],
                              ),
                            )
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
