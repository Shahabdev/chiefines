import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    required this.backcolor,
    required this.textcolor,
    required this.text,
    Key? key,
  }) : super(key: key);
  final Color backcolor;
  final Color textcolor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35), color: backcolor),
        child: Center(
            child: Text(text,
                style: TextStyle(
                    color: textcolor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500))));
  }
}
