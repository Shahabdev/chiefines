import 'package:flutter/material.dart';
import 'package:food_app/screens/bottomNagivation_screens/home_screen/home_ViewList.dart';
import 'package:food_app/screens/bottomNagivation_screens/home_screen/homescrren2.dart';

import '../home_screen/homeScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  get avatar => [
        'assets/avatars/person1.png',
        'assets/avatars/person2.png',
        'assets/avatars/person3.png',
        'assets/avatars/person4.png',
        'assets/avatars/person3.png',
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
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController2 = (TabController(length: 2, vsync: this));
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) => [
              SliverAppBar(
                  leading: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const HomeScreen())));
                      },
                      child: const Icon(Icons.arrow_back_ios_new)),
                  expandedHeight: 350.0,
                  stretch: true,
                  title: const Text('Profile'),
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: const [
                      StretchMode.zoomBackground,
                      // StretchMode.fadeTitle
                    ],
                    background: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height / 8,
                        ),
                        Image.asset(
                          'assets/avatars/person6.png',
                          scale: .8,
                        ),
                        SizedBox(
                          height: height / 40,
                        ),
                        Text(
                          'Choriul Syafrill',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.blueGrey[800]),
                        ),
                        SizedBox(
                          height: height / 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '32',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.blueGrey[800]),
                            ),
                            Text(
                              '782',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.blueGrey[800]),
                            ),
                            Text(
                              '1,280',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.blueGrey[800]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height / 90,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Recipes',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.blueGrey[300]),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.blueGrey[300]),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.blueGrey[300]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height / 60,
                        ),
                        Divider(
                          color: const Color.fromARGB(255, 226, 226, 226),
                          thickness: height / 90,
                        )
                      ],
                    ),
                  ),
                  floating: true,
                  pinned: false,
                  snap: false),
            ]),
        body: Column(
          children: [
            TabBar(
              controller: tabController2,
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Recipes',
                        style: TextStyle(
                            fontSize: 16, color: Colors.blueGrey[800])),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Liked',
                      style:
                          TextStyle(fontSize: 16, color: Colors.blueGrey[800]),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                // height: height / 1,
                width: double.maxFinite,
                child: TabBarView(
                  controller: tabController2,
                  children: [
                    GridView.count(
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
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
