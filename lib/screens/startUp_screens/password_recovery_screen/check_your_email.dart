import 'package:flutter/material.dart';
import 'package:food_app/screens/startUp_screens/widgets/button_widgets.dart';
import 'package:food_app/screens/startUp_screens/widgets/verfication_code.dart';

class CheckEmailPassowrd extends StatelessWidget {
  const CheckEmailPassowrd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MediaQuery
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Text(
              'Check your email',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800]),
            ),
            SizedBox(height: height / 40),
            Text(
              'We.ve sent the code to your email',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400]),
            ),
            SizedBox(height: height / 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                VerficationCodeBoxs(),
                VerficationCodeBoxs(),
                VerficationCodeBoxs(),
                VerficationCodeBoxs(),
              ],
            ),
            SizedBox(height: height / 20),
            Text(
              'Code expires in: 03:12',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700]),
            ),
            SizedBox(height: height / 15),
            const ReusableButton(
                backgroundColor: Color.fromARGB(255, 29, 179, 34),
                text: 'Next',
                press: '/ResetPassword',
                textColor: Colors.white),
            SizedBox(height: height / 30),
            const ReusableButton(
                backgroundColor: Color.fromARGB(255, 202, 202, 202),
                text: 'Send again',
                press: '/CheckEmailPassowrd',
                textColor: Color.fromARGB(255, 99, 99, 99))
          ],
        ));
  }
}
