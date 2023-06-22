// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton(
      {Key? key,
      required this.text,
      required this.textColor,
      this.icon,
      this.backgroundColor,
      this.press})
      : super(key: key);
  final String text;
  final IconData? icon;
  final Color? backgroundColor;
  final Color textColor;
  final String? press;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height / 14,
      width: width / 1.15,
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, press.toString());
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          color: backgroundColor,
          //  minWidth: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: height / 40,
                      color: textColor)),
            ],
          )),
    );
  }
}
