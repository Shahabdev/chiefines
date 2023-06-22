import 'package:flutter/material.dart';
import 'package:food_app/screens/startUp_screens/widgets/button_widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Stack(clipBehavior: Clip.none, children: [
            Positioned(
                top: height * .22,
                left: width * 0.3,
                child: Image.asset('assets/images/onBoard7.png')),
            Positioned(
                top: height * .25,
                left: width / 1.20,
                // //right: width * -0.7,
                child: Image.asset('assets/images/onBoard6.png')),
            Positioned(
                top: height * .10,
                left: width / 15,
                child: Image.asset('assets/images/onBoard5.png')),
            Positioned(
                top: height * .05,
                left: width / 1.8,
                child: Image.asset('assets/images/onBoard4.png')),
            Positioned(
                top: height * .42,
                left: width * 0.75,
                child: Image.asset('assets/images/onBoard3.png')),
            Positioned(
                top: height * .30,
                child: Image.asset('assets/images/onBoard1.png')),
            Positioned(
                top: height * .48,
                left: width / 8,
                child: Image.asset('assets/images/onBoard2.png')),
            Positioned(
                top: height * .48,
                left: width / 2.3,
                child: Image.asset('assets/images/onBoard8.png')),
          ]),
        ),
        Column(
          children: [
            Text("Start Cooking",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: height / 30)),
          ],
        ),
        SizedBox(height: height / 60),
        Text("Let's join our community \n     to cook better food!",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: height / 40,
                color: Colors.grey[500])),
        SizedBox(height: height / 13),
        const ReusableButton(
            press: '/LoginScreen',
            text: 'Get Started',
            backgroundColor: Color.fromARGB(255, 29, 179, 34),
            textColor: Colors.white),
        SizedBox(height: height / 15),
      ],
    ));
  }
}
