import 'package:flutter/material.dart';

class HintTextField extends StatelessWidget {
  HintTextField({
    Key? key,
    required this.hintText,
    this.textWordsLenght,
    this.inputType,
    this.icon,
  }) : super(key: key);
  final String hintText;
  final int? textWordsLenght;
  final TextInputType? inputType;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
        right: width / 30,
      ),
      child: TextField(
          maxLength: textWordsLenght,
          decoration: InputDecoration(
            // prefixIcon: Icon(icon, size: 10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 216, 214, 214), width: 1.5)),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[400]),
          ),
          keyboardType: inputType,
          textInputAction: TextInputAction.done),
    );
  }
}
