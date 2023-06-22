import 'package:flutter/material.dart';

import 'package:food_app/screens/startUp_screens/widgets/textField.dart';

import '../widgets/button_widgets.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          SizedBox(height: height / 20),
          Text(
            'Password Recovery',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: height / 60),
          Text(
            'Enter your email to recover your password',
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: height / 30),
          ReuseableTextField(
            hintText: 'Enter your email',
            startIcon: Icons.email_outlined,
            obscure: false,
            inputType: TextInputType.emailAddress,
          ),
          SizedBox(height: height / 30),
          const ReusableButton(
              backgroundColor: Colors.green,
              text: 'Next',
              textColor: Colors.white,
              press: '/CheckEmailPassowrd')
        ],
      ),
    );
  }
}
