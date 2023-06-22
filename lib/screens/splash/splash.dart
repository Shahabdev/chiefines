// ignore_for_file: sort_child_properties_last

import 'dart:async';

import 'package:flutter/material.dart';

import '../startUp_screens/onBoarding_screen/onBoarding_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/OnBoardingScreen'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff3d3d3d),
        body: Stack(
          children: [
            TweenAnimationBuilder(
              child: Image.asset(
                "assets/images/logo.png",
                scale: 4,
              ),
              tween: Tween<double>(begin: 200, end: -81),
              duration: const Duration(seconds: 2),
              curve: Curves.bounceOut,
              builder: (BuildContext context, double val, Widget? child) {
                return Positioned(
                    left: val, right: val, child: child as Widget);
              },
            ),
            // Text('awds')
          ],
        ));
  }
}
