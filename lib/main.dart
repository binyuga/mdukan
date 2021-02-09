import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mdukan/constants/colors/colors.dart';
import 'package:mdukan/models/providerModifier.dart';
import 'package:mdukan/screens/Login_and_Register/Login/LoginVerificationScreen.dart';
import 'package:mdukan/screens/Login_and_Register/Register/MobileNoRegistratation.dart';
import 'package:mdukan/screens/Login_and_Register/Register/RegistrationVerificationScreen.dart';
import 'package:mdukan/screens/Login_and_Register/Register/WelcomeRegistrationScreen.dart';
import 'package:mdukan/screens/Login_and_Register/Login/WelcomeScreen.dart';
import 'package:mdukan/screens/MainScreen/homeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: kPrimaryColor, // navigation bar color
      statusBarColor: kPrimaryColor.withOpacity(0.95), // status bar color
    ));

    return ChangeNotifierProvider(
      create: (_) => ProviderModifier(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Monsterrat'),
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen().screenId: (context) => HomeScreen(), //home Screen route
          WelcomeLoginScreen().screenId: (context) => WelcomeLoginScreen(),
          WelcomeRegistrationScreen().screenId: (context) =>
              WelcomeRegistrationScreen(),
          MobileNoRegistration().screenId: (context) => MobileNoRegistration(),
          RegistrationVerificationScreen().screenId: (context) =>
              RegistrationVerificationScreen(),
          LoginVerificationScreen().screenId: (context) =>
              LoginVerificationScreen(),
        },
        initialRoute: WelcomeLoginScreen().screenId,
      ),
    );
  }
}
