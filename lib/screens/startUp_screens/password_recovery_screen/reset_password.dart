import 'package:flutter/material.dart';
import 'package:food_app/screens/startUp_screens/widgets/textField.dart';

import '../widgets/button_widgets.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool onChecked1 = false;
  bool onChecked2 = true;
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Rest Your Password',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: height / 28,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: height / 50),
                Text(
                  'Please enter your new password',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: height / 20),

                ReuseableTextField(
                    hintText: 'password',
                    startIcon: Icons.lock_outline_rounded,
                    inputType: TextInputType.multiline,
                    endIcon: Icons.visibility_outlined,
                    obscure: true),
                SizedBox(height: height / 30),

                // some text
                Padding(
                  padding: EdgeInsets.only(right: width / 3.5),
                  child: Text(
                    'Your Password must contain:',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: height / 45,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Checkbox(
                          shape: const CircleBorder(),
                          value: onChecked1,
                          onChanged: (value) {
                            setState(() => onChecked1 = value!);
                          }),
                      const Text('Atleast 6 characters',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Checkbox(
                          shape: const CircleBorder(),
                          value: onChecked2,
                          onChanged: (value) {
                            setState(() => onChecked2 = value!);
                          }),
                      const Text('Contains a number',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                SizedBox(height: height / 50),
                const ReusableButton(
                    backgroundColor: Color.fromARGB(255, 29, 179, 34),
                    text: 'Done',
                    press: '/HomeScreen',
                    textColor: Colors.white)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
