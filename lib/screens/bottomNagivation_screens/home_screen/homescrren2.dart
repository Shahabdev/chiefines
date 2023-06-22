import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app/screens/bottomNagivation_screens/widgets/SearchPanel.dart';

import '../../detail_screen/details_screens.dart';
import 'home_ViewList.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  get avatar => [
        'assets/avatars/person4.png',
        'assets/avatars/person2.png',
        'assets/avatars/person3.png',
        'assets/avatars/person2.png',
        'assets/avatars/person4.png',
        'assets/avatars/person1.png'
      ];
  get avatarName => [
        'Calum Lewis',
        'Eilif Sonas',
        'Elena Shelby',
        'Jhon Priyadi',
        'Aida thon',
        'Jhonny'
      ];
  get mainpic => [
        'assets/images/image 1.png',
        'assets/images/image 2.png',
        'assets/images/image 3.png',
        'assets/images/Rectangle 188.png',
        'assets/images/image 2.png',
        'assets/images/image 1.png'
      ];
  get title => ['Pancake', 'Salad', 'Mix Achar', 'Mix Vag', 'Pancake', "Salad"];
  get subtitle => [
        'Food . >60 mins',
        'Food . >50 mins',
        'Food . >60 mins',
        'Food . >30 mins',
        'Food . >60 mins',
        'Food . >25 mins'
      ];
  // second GridView

  get avatara => [
        'assets/avatars/person4.png',
        'assets/avatars/person1.png',
        'assets/avatars/person2.png',
        'assets/avatars/person4.png',
        'assets/avatars/person3.png',
        'assets/avatars/person1.png'
      ];
  get avatarNamea => [
        'Calum Lewis',
        'Eilif Sonas',
        'Elena Shelby',
        'Jhon Priyadi',
        'Aida thon',
        'Jhonny'
      ];
  get mainpica => [
        'assets/images/image 3.png',
        'assets/images/Rectangle 188.png',
        'assets/images/image 1.png',
        'assets/images/image 2.png',
        'assets/images/image 2.png',
        'assets/images/image 1.png'
      ];
  get titlea =>
      ['Pancake', 'Salad', 'Mix Achar', 'Mix Vag', 'Pancake', "Salad"];
  get subtitlea => [
        'Food . >60 mins',
        'Food . >50 mins',
        'Food . >60 mins',
        'Food . >30 mins',
        'Food . >60 mins',
        'Food . >25 mins'
      ];
  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = (TabController(length: 3, vsync: this));

    // Media Query
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Searching TextField
          const SearchPanel(),
          SizedBox(height: height / 80),
          // Title Text
          Padding(
            padding: EdgeInsets.only(left: width / 18.0),
            child: Text('Category',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: height / 30,
                    color: Colors.grey[800])),
          ),
          SizedBox(
            height: height / 90,
          ),
          // TabBar and TabBarView
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TabBar(
                indicatorColor: Colors.transparent,
                indicator: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50)),
                unselectedLabelColor: Colors.grey[600],
                controller: tabController,
                tabs: const [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('All'),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Food',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Drink'),
                    ),
                  )
                ]),
          ),
          SizedBox(
            height: height / 140,
          ),
          Divider(thickness: 7, color: Colors.grey[200]),
          Expanded(
            child: SizedBox(
                height: height / .3,
                child: TabBarView(controller: tabController, children: [
                  // Tab 1(All)
                  Column(
                    children: [
                      Expanded(
                        child: GridView.count(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 120,
                            children: List.generate(
                              6,
                              (index) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              const DetailScreen())));
                                },
                                child: GridViewList(
                                  avatar1: widget.avatar[index],
                                  avatarName1: widget.avatarName[index],
                                  mainpic1: widget.mainpic[index],
                                  title1: widget.title[index],
                                  subtitle1: widget.subtitle[index],
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  // Tab 2(Food)
                  Column(
                    children: [
                      Expanded(
                        child: GridView.count(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 110,
                            children: List.generate(
                              6,
                              (index) => GridViewList(
                                avatar1: widget.avatara[index],
                                avatarName1: widget.avatarNamea[index],
                                mainpic1: widget.mainpica[index],
                                title1: widget.titlea[index],
                                subtitle1: widget.subtitlea[index],
                              ),
                            )),
                      ),
                    ],
                  ),
                  // Tab 3(Drink)
                  Column(
                    children: [
                      Expanded(
                        child: GridView.count(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 110,
                            children: List.generate(
                              6,
                              (index) => GridViewList(
                                avatar1: widget.avatar[index],
                                avatarName1: widget.avatarName[index],
                                mainpic1: widget.mainpic[index],
                                title1: widget.title[index],
                                subtitle1: widget.subtitle[index],
                              ),
                            )),
                      ),
                    ],
                  ),
                ])),
          ),
        ],
      ),
    ));
  }
}
