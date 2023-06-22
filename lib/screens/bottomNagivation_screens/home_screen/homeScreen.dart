import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/screens/bottomNagivation_screens/home_screen/homescrren2.dart';
import 'package:image_picker/image_picker.dart';

import '../notifi_screen/notificationScreen.dart';
import '../profile_screen/profileScreen.dart';
import '../scan_screen/scanScreen.dart';
import '../upload_screen/uploadScreen1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? file;
  Future<void> getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemp = File(image.path);

      setState(() {
        file = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Faild to pick image $e');
    }
  }

  int index = 0;
  final screens = [
    const HomeScreen2(),
    const UploadScreen1(),
    const ScanScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Floating Button
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () => getImage(ImageSource.camera),
            elevation: 2.0,
            child: const Icon(Icons.qr_code_scanner_outlined)),

        // Bottom Naivagation bar
        bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
                backgroundColor: Colors.white,
                indicatorColor: Colors.transparent,
                labelTextStyle: MaterialStateProperty.all(const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
                height: 60),
            child: NavigationBar(
              selectedIndex: index,
              onDestinationSelected: (index) => setState(() {
                this.index = index;
              }),
              destinations: [
                NavigationDestination(
                    selectedIcon:
                        const Icon(Icons.home_filled, color: Colors.green),
                    icon: Icon(Icons.home_filled, color: Colors.grey[600]),
                    label: 'Home'),
                NavigationDestination(
                    selectedIcon: const Icon(Icons.file_upload_rounded,
                        color: Colors.green),
                    icon: Icon(Icons.file_upload_rounded,
                        color: Colors.grey[600]),
                    label: 'Upload'),
                NavigationDestination(
                    icon: Icon(Icons.abc, color: Colors.grey[600]),
                    label: 'Scan'),
                NavigationDestination(
                    selectedIcon:
                        const Icon(Icons.notifications, color: Colors.green),
                    icon: Icon(Icons.notifications, color: Colors.grey[600]),
                    label: 'Notifications'),
                NavigationDestination(
                    selectedIcon: const Icon(Icons.person, color: Colors.green),
                    icon: Icon(Icons.person, color: Colors.grey[600]),
                    label: 'Profile')
              ],
            )),
        // Body
        body: screens[index]);
  }
}
