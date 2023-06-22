import 'package:flutter/material.dart';

class ReuseableListTile extends StatelessWidget {
  const ReuseableListTile({
    Key? key,
    required this.lead,
    required this.trail,
    required this.color,
  }) : super(key: key);

  final String lead;
  final String trail;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ListTile(
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Text(
          lead,
          style: TextStyle(
              fontWeight: FontWeight.w500, color: color, fontSize: height / 40),
        ),
      ),
      trailing: Text(
        trail,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey[800],
            fontSize: height / 40),
      ),
    );
  }
}
