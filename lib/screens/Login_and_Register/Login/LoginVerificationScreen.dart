import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdukan/constants/colors/colors.dart';
import 'package:mdukan/widgets/LoginAndRgistrationScreen/LoginAndRegisterButton.dart';
import 'package:mdukan/widgets/LoginAndRgistrationScreen/WhiteBoxWidget.dart';

class LoginVerificationScreen extends StatefulWidget {
  final screenId = 'LoginVerificationScreen';
  @override
  _LoginVerificationScreenState createState() =>
      _LoginVerificationScreenState();
}

class _LoginVerificationScreenState extends State<LoginVerificationScreen> {
  String mobileNumber = '+91 9503058586';
  final _firstBox = TextEditingController();
  final _secondBox = TextEditingController();
  final _thirdBox = TextEditingController();
  final _fourthBox = TextEditingController();
  List<String> crudeOTP = ['', '', '', ''];
  String OTP = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
            width: double.maxFinite,
            color: kPrimaryColor,
            child: WhiteBoxWidget(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 75),
                        child: Text(
                          'Verification',
                          style: TextStyle(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Center(
                                    child: Text(
                                      'We have sent a verification code to you\n on your mobile number',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: kPrimaryColor),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Center(
                                    child: Text(
                                      mobileNumber,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text(
                                      'Auto Verification in progress\n Please Wait..',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: kPrimaryColor),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black54,
                                                width: 1.0,
                                                style: BorderStyle.solid),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        width: 40,
                                        child: TextField(
                                          controller: _firstBox,
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration.collapsed(
                                              hintText: null),
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                          onChanged: (value) {
                                            if (value.length == 1) {
                                              crudeOTP.insert(0, value);
                                              FocusScope.of(context)
                                                  .nextFocus();
                                            } else if (value.length > 1) {
                                              _firstBox.clear();
                                            }
                                          },
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black54,
                                                width: 1.0,
                                                style: BorderStyle.solid),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        width: 40,
                                        child: TextField(
                                          controller: _secondBox,
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration.collapsed(
                                              hintText: null),
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                          onChanged: (value) {
                                            if (value.length == 1) {
                                              crudeOTP.insert(1, value);
                                              FocusScope.of(context)
                                                  .nextFocus();
                                            } else if (value.length > 1) {
                                              _secondBox.clear();
                                            }
                                          },
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black54,
                                                width: 1.0,
                                                style: BorderStyle.solid),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        width: 40,
                                        child: TextField(
                                          controller: _thirdBox,
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration.collapsed(
                                              hintText: null),
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                          onChanged: (value) {
                                            if (value.length == 1) {
                                              //crudeOTP.insert(2, value);
                                              FocusScope.of(context)
                                                  .nextFocus();
                                            } else if (value.length > 1) {
                                              _thirdBox.clear();
                                            }
                                          },
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black54,
                                                width: 1.0,
                                                style: BorderStyle.solid),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        width: 40,
                                        child: TextField(
                                          controller: _fourthBox,
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration.collapsed(
                                              hintText: null),
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                          onChanged: (value) {
                                            if (value.length == 1) {
                                              crudeOTP.insert(3, value);
                                              FocusScope.of(context).unfocus();
                                            } else if (value.length > 1) {
                                              _fourthBox.clear();
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    child: LoginAndRegisterButton(
                                  label: 'Continue',
                                  onClick: () {
                                    Navigator.pushNamed(context, 'HomeScreen');
                                  },
                                )),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Didn't receive the verification code ? ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "RESEND CODE",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.red,
                                              fontSize: 10),
                                        ),
                                      ),
                                    ],
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
