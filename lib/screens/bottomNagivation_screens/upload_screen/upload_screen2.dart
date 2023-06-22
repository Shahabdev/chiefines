import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_app/screens/bottomNagivation_screens/widgets/hint_text_Field.dart';
import 'package:food_app/screens/bottomNagivation_screens/widgets/small_Button.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/listTile.dart';

class UploadScreen2 extends StatefulWidget {
  const UploadScreen2({Key? key}) : super(key: key);

  @override
  State<UploadScreen2> createState() => _UploadScreen2State();
}

class _UploadScreen2State extends State<UploadScreen2> {
  bool textFieldIncreaser = true;
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];
  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    setState(() {});
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Image.asset('assets/images/image 8.png'),
              content: SizedBox(
                height: 150,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upload Success',
                      style: TextStyle(
                          color: Colors.blueGrey[800],
                          fontWeight: FontWeight.w600,
                          fontSize: 25),
                    ),
                    Text(
                      'Your recipe has been uploaded,\n    you can see it on your profile ',
                      style: TextStyle(
                          color: Colors.blueGrey[800],
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/HomeScreen');
                      },
                      child: const SmallButton(
                          backcolor: Colors.green,
                          textcolor: Colors.white,
                          text: 'Back to Home'),
                    )
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            //leading  Text
            const ReuseableListTile(
              lead: 'Cancel',
              trail: '2/2',
              color: Colors.red,
            ),
            const ReuseableListTile(
              lead: 'Ingredients',
              trail: '+  Group',
              color: Color.fromARGB(255, 54, 74, 83),
            ),
            // Texifields
            textfiledforIngreident(),
            textfiledforIngreident(),

            Container(
              height: height / 13,
              width: width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(
                      color: const Color.fromARGB(255, 216, 214, 214),
                      width: 1.5)),
              child: InkWell(
                  splashColor: Colors.green,
                  highlightColor: Colors.black,
                  onTap: () {
                    setState(() {
                      textFieldIncreaser = !textFieldIncreaser;
                    });
                  },
                  child: textFieldIncreaser == false
                      ? Container(
                          margin: EdgeInsets.only(
                            right: width / 300,
                          ),
                          child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(60),
                                    borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 216, 214, 214),
                                        width: 1.5)),
                                hintText: 'Enter Ingredient',
                                hintStyle: TextStyle(color: Colors.grey[400]),
                              ),
                              keyboardType: TextInputType.multiline,
                              textInputAction: TextInputAction.done),
                        )
                      : Center(
                          child: Text('+ Ingredient',
                              style: TextStyle(
                                  fontSize: height / 40,
                                  fontWeight: FontWeight.w500)))),
            ),

            SizedBox(
              height: height / 30,
            ),
            Divider(
              thickness: width / 50,
              color: const Color.fromARGB(255, 218, 218, 218),
            ),
            SizedBox(
              height: height / 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Steps',
                    style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontWeight: FontWeight.w600,
                        fontSize: height / 35),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: height / 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: HintTextField(hintText: 'Tell me about your food'),
            ),
            SizedBox(
              height: height / 30,
            ),
            //image selection
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: height / 3.2,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 231, 231, 231),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
                  child: GridView.builder(
                    itemCount: imageFileList!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          File(imageFileList![index].path),
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.green,
                child: const Text(
                  'Pick your Images',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  selectImages();
                }),
            SizedBox(
              height: height / 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  splashColor: Colors.green,
                  highlightColor: Colors.green,
                  onTap: () => Navigator.pop(context),
                  child: const SmallButton(
                    backcolor: Color.fromARGB(255, 216, 216, 216),
                    textcolor: Color.fromARGB(255, 28, 39, 44),
                    text: 'Back',
                  ),
                ),
                GestureDetector(
                  onTap: () => _showDialog(),
                  child: const SmallButton(
                    backcolor: Colors.green,
                    textcolor: Colors.white,
                    text: 'Next',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 30,
            ),
          ],
        ),
      )),
    );
  }

  Padding textfiledforIngreident() {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 10, bottom: 20),
      child: HintTextField(hintText: 'Enter ingredient'),
    );
  }
}
