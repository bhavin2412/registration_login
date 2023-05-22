import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registration_login/provider/Signprovider.dart';
import 'package:registration_login/provider/Splace_provider.dart';
import 'package:registration_login/view/Signin_Screen.dart';
import 'package:registration_login/view/Signin_Secussful.dart';
import 'package:registration_login/view/Signup_Screen.dart';



Future<void> main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Signprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => IntroProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // '/': (context) => SplashScreen(),
          '/': (context) => SignupPage(),
          'in': (context) => SignInPage(),
          'welcome': (context) => WelcomePage(),
        },
      ),
    ),
  );
}