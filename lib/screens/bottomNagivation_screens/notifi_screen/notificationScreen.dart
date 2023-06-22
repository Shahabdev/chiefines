import 'package:flutter/material.dart';
import 'package:food_app/screens/bottomNagivation_screens/widgets/profile_list_Tile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height / 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: Text('New',
                style: TextStyle(
                    color: Colors.blueGrey[800],
                    fontWeight: FontWeight.w600,
                    fontSize: height / 30)),
          ),
          SizedBox(
            height: height / 60,
          ),
          ResuseableListTile(
              leadIcon: const CircleAvatar(
                backgroundImage: AssetImage('assets/avatars/person4.png'),
              ),
              title: 'Dean Winchester',
              subtitle: 'non following you    1h'),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, top: 20),
            child: Text('Today',
                style: TextStyle(
                    color: Colors.blueGrey[800],
                    fontWeight: FontWeight.w600,
                    fontSize: height / 30)),
          ),
          SizedBox(
            height: height / 60,
          ),
          ListTile(
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: height / 50,
                  child: const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/avatars/person5.png')),
                ),
                Positioned(
                  child: CircleAvatar(
                    backgroundImage:
                        const AssetImage('assets/avatars/person3.png'),
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3))),
                  ),
                ),
              ],
            ),
            title: Text(
              'Jhon Steve and Sam Winchester',
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.blueGrey[800]),
            ),
            subtitle: const Text("Liked your recipe   20min"),
            trailing: Container(
                height: height / 9,
                width: width / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/images/image 1.png')),
          ),
          ResuseableListTile(
              leadIcon: Image.asset('assets/avatars/person5.png'),
              title: 'Jhon Shelby',
              subtitle: 'Following you     1h'),
          ResuseableListTile(
              leadIcon: Image.asset('assets/avatars/person6.png'),
              title: 'Peter Parker',
              subtitle: 'Following you     4h'),
          SizedBox(
            height: height / 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, top: 20),
            child: Text('Yesterday',
                style: TextStyle(
                    color: Colors.blueGrey[800],
                    fontWeight: FontWeight.w600,
                    fontSize: height / 30)),
          ),
          SizedBox(
            height: height / 60,
          ),
          ResuseableListTile(
              leadIcon: Image.asset('assets/avatars/person6.png'),
              title: 'Jhon Shelby',
              subtitle: 'Following you     1day'),
          ResuseableListTile(
              leadIcon: Image.asset('assets/avatars/person6.png'),
              title: 'Peter Parker',
              subtitle: 'Following you     1day'),
        ],
      ),
    ));
  }
}
