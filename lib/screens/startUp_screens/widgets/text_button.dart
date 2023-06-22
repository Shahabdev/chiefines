// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class TextableButton extends StatelessWidget {
  const TextableButton({
    Key? key,
    required this.text,
    required this.color,
    required this.route,
    this.textBoldness,
  }) : super(key: key);

  final String text;
  final Color color;
  final String route;
  final FontWeight? textBoldness;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return FlatButton(
        minWidth: 30,
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        height: 30,
        child: Text(text,
            style: TextStyle(
                fontWeight: textBoldness,
                fontSize: height / 50,
                color: color)));
  }
}
