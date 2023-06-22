import 'package:flutter/material.dart';

import 'package:food_app/screens/bottomNagivation_screens/home_screen/homeScreen.dart';
import 'package:food_app/screens/bottomNagivation_screens/upload_screen/upload_screen2.dart';
import 'package:food_app/screens/splash/splash.dart';
import 'package:food_app/screens/startUp_screens/password_recovery_screen/check_your_email.dart';
import 'package:food_app/screens/startUp_screens/password_recovery_screen/reset_password.dart';
import 'package:food_app/screens/startUp_screens/signUp_screen/check_your_email.dart';
import 'package:food_app/screens/startUp_screens/signUp_screen/signUp.dart';

import 'screens/bottomNagivation_screens/home_screen/homescrren2.dart';
import 'screens/detail_screen/details_screens.dart';
import 'screens/startUp_screens/login_screen/logIn.dart';
import 'screens/startUp_screens/onBoarding_screen/onBoarding_screen.dart';
import 'screens/startUp_screens/password_recovery_screen/forget_Password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              foregroundColor: Colors.blueGrey[800],
              elevation: 0.0,
              color: Colors.transparent),
          primarySwatch: Colors.green,
        ),
        initialRoute: '/Splash',
        routes: {
          '/Splash': (context) => const Splash(),
          '/OnBoardingScreen': (context) => const OnBoardingScreen(),
          '/LoginScreen': (context) => const LoginScreen(),
          '/ForgetPassword': (context) => const ForgetPassword(),
          '/HomeScreen': (context) => const HomeScreen(),
          '/SignUp': (context) => const SignUp(),
          '/CheckEmail': (context) => const CheckEmail(),
          '/CheckEmailPassowrd': (context) => const CheckEmailPassowrd(),
          '/ResetPassword': (context) => const ResetPassword(),
          '/UploadScreen2': (context) => const UploadScreen2(),
          '/HomeScreen2': (context) => const HomeScreen2(),
          '/DetailScreen': (context) => const DetailScreen()
        });
  }
}
