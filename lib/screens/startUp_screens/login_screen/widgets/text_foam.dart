// import 'dart:io';

// import 'package:flutter/material.dart';

// class TextfieldEdits extends StatefulWidget {
//   TextfieldEdits({Key? key}) : super(key: key);

//   @override
//   State<TextfieldEdits> createState() => _TextfieldEditsState();
// }

// class _TextfieldEditsState extends State<TextfieldEdits> {
//   final formKey = GlobalKey();
//   String name = '';

//   @override
//   Widget build(BuildContext context) {
//     final double height = MediaQuery.of(context).size.height;
//     final formKey = GlobalKey<FormState>();

//     return Scaffold(
//       body: Container(
//           padding: const EdgeInsets.only(left: 40, right: 40),
//           child: Form(
//             key: formKey,
//             child: Column(
//               children: [
//                 SizedBox(height: height * 0.04),
//                 Text('WelcomeBack!',
//                     style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: height / 25,
//                         color: Colors.grey[900])),
//                 SizedBox(height: height / 50),
//                 Text('Please enter your account here',
//                     style: TextStyle(
//                         fontWeight: FontWeight.normal,
//                         fontSize: height / 40,
//                         color: Colors.grey[600])),
//                 SizedBox(height: height / 15),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'Email or Phone number',
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty ||
//                         !RegExp(r'[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
//                             .hasMatch(value)) {
//                       return 'Please Enter Correct email';
//                     } else {
//                       return null;
//                     }
//                   },
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 MaterialButton(
//                     color: Colors.blue,
//                     height: 60,
//                     minWidth: 300,
//                     onPressed: () {
//                       if (formKey.currentState!.validate()) {}
//                     },
//                     child: Text('Click me'))
//               ],
//             ),
//           )),
//     );
//   }
// }
