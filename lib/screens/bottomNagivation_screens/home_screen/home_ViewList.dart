import 'package:flutter/material.dart';
import 'package:food_app/screens/bottomNagivation_screens/home_screen/home_ViewList.dart';

class GridViewList extends StatefulWidget {
  const GridViewList({
    Key? key,
    required this.avatar1,
    required this.avatarName1,
    required this.mainpic1,
    required this.title1,
    required this.subtitle1,
  }) : super(key: key);

  final String avatar1;
  final String avatarName1;
  final String mainpic1;
  final String title1;
  final String subtitle1;

  @override
  State<GridViewList> createState() => _GridViewListState();
}

class _GridViewListState extends State<GridViewList> {
  bool heartSelected = true;
  int index = 0;
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    // Media Query
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Wrap(children: [
      Column(
        children: [
          SizedBox(
            height: height / 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 20.0),
            child: Row(
              // Person avatar and name
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(widget.avatar1),
                ),
                Text(widget.avatarName1,
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w400,
                        fontSize: height / 50))
              ],
            ),
          ),
          SizedBox(
            height: height / 50,
          ),
          Stack(children: [
            // Main Dish Image
            Image.asset(
              widget.mainpic1,
            ),
            Positioned(
                left: width / 4.3,
                top: height / 40,
                child: Container(
                    width: width / 9,
                    height: height / 20,
                    decoration: BoxDecoration(
                        backgroundBlendMode: BlendMode.hardLight,
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(9)),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          heartSelected = !heartSelected;
                        });
                      },
                      icon: Icon(
                          heartSelected
                              ? Icons.favorite_border_outlined
                              : Icons.favorite,
                          color: Colors.white),
                    )))
          ]),
          SizedBox(
            height: height / 60,
          ),
          // Title of Dish
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title1,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w600,
                      fontSize: height / 40)),

              // SubTitle of Dish
              Text(widget.subtitle1,
                  style: TextStyle(
                      color: Colors.grey[500], fontSize: height / 40)),
            ],
          ),
        ],
      ),
    ]);
  }
}
