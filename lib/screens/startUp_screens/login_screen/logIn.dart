import 'package:flutter/material.dart';
import 'package:food_app/screens/startUp_screens/widgets/text_button.dart';

import '../widgets/button_widgets.dart';
import '../widgets/textField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //   double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Column(
              children: [
                SizedBox(height: height / 20),
               
               
                // Text
                Text('Welcome Back!',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: height / 25,
                        color: Colors.grey[900])),
                SizedBox(height: height / 50),
                Text('Please enter your account here',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: height / 40,
                        color: Colors.grey[600])),
                SizedBox(height: height / 15),
                
                
                //Text Field
                ReuseableTextField(
                  obscure: false,
                  startIcon: Icons.email_outlined,
                  hintText: 'Email or Phone number',
                  inputType: TextInputType.emailAddress,
                  validationError: 'Invalid email',
                ),
                SizedBox(height: height / 40),
                ReuseableTextField(
                    obscure: true,
                    startIcon: Icons.lock_outlined,
                    endIcon: Icons.visibility_outlined,
                    hintText: 'Password',
                    inputType: TextInputType.multiline,
                    validationError: 'Invalid Password'),
                

                // Forget button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      TextableButton(
                          text: 'Forget Password?',
                          textBoldness: FontWeight.w400,
                          color: Color.fromARGB(255, 116, 115, 115),
                          route: '/ForgetPassword'),
                    ],
                  ),
                ),
                SizedBox(height: height / 15),
                // Buttons
                const ReusableButton(
                    text: 'Login',
                    press: '/HomeScreen',
                    backgroundColor: Color.fromARGB(255, 29, 179, 34),
                    textColor: Colors.white),
                SizedBox(height: height / 30),
                Text(
                  'Or continue with',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: height / 30),
                const ReusableButton(
                    text: 'Google',
                    icon: Icons.g_mobiledata_outlined,
                    press: '/HomeScreen',
                    backgroundColor: Colors.red,
                    textColor: Colors.white),
                SizedBox(height: height / 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have any account?',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    
                    const TextableButton(
                        text: 'Sign Up',
                        textBoldness: FontWeight.w500,
                        color: Color.fromARGB(255, 29, 179, 34),
                        route: '/SignUp'),
                  ],
                )
              ],
            )
          ]),
        ));
  }
}
