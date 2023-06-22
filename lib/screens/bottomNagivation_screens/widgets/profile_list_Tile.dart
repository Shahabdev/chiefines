import 'package:flutter/material.dart';

class ResuseableListTile extends StatefulWidget {
  ResuseableListTile(
      {required this.leadIcon,
      required this.title,
      required this.subtitle,
      this.followButton,
      Key? key})
      : super(key: key);
  final Widget leadIcon;
  final String title;
  final String subtitle;
  final bool? followButton;
  @override
  State<ResuseableListTile> createState() => _ResuseableListTileState();
}

class _ResuseableListTileState extends State<ResuseableListTile> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListTile(
        leading: widget.leadIcon,
        title: Text(widget.title,
            style: TextStyle(
                color: Colors.blueGrey[800],
                fontWeight: FontWeight.w500,
                fontSize: height / 40)),
        subtitle: Text(widget.subtitle),
        trailing: InkWell(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: selected
              ? Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                      child: Text('Follow',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: height / 50))),
                )
              : Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 209, 209, 209),
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                    child: Text('Following',
                        style: TextStyle(
                            color: Colors.blueGrey[800],
                            fontWeight: FontWeight.w400,
                            fontSize: height / 50)),
                  )),
        ));
  }
}
