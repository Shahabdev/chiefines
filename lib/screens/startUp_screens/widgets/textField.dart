import 'package:flutter/material.dart';

class ReuseableTextField extends StatefulWidget {
  ReuseableTextField(
      {Key? key,
      required this.hintText,
      this.startIcon,
      this.endIcon,
      this.inputType,
      this.validationError,
      required this.obscure})
      : super(key: key);
  final String hintText;
  final IconData? startIcon;
  final IconData? endIcon;
  final TextInputType? inputType;
  final bool obscure;
  final String? validationError;

  @override
  State<ReuseableTextField> createState() => _ReuseableTextFieldState();
}

class _ReuseableTextFieldState extends State<ReuseableTextField> {
  bool visiblePassword = false;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 22.0,
            right: 22.0,
          ),
          child: TextFormField(
            obscureText: visiblePassword == false ? widget.obscure : false,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      visiblePassword = !visiblePassword;
                    });
                  },
                  icon: Icon(visiblePassword == true
                      ? Icons.visibility_off
                      : widget.endIcon)),
              prefixIcon: Icon(widget.startIcon, color: Colors.grey[600]),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 216, 214, 214), width: 1.5)),
              hintText: widget.hintText,
              hintStyle: TextStyle(color: Colors.grey[400]),
              alignLabelWithHint: false,
            ),
            keyboardType: widget.inputType,
            textInputAction: TextInputAction.done,
          ),
        ),
      ],
    );
  }
}
