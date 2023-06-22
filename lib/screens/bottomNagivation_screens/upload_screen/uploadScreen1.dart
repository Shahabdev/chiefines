import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/screens/bottomNagivation_screens/widgets/hint_text_Field.dart';
import 'package:food_app/screens/bottomNagivation_screens/widgets/listTile.dart';
import 'package:food_app/screens/startUp_screens/widgets/button_widgets.dart';
import 'package:image_picker/image_picker.dart';

class UploadScreen1 extends StatefulWidget {
  const UploadScreen1({Key? key}) : super(key: key);

  @override
  State<UploadScreen1> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen1> {
  File? imagefile;

  Future<void> getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemp = File(image.path);

      setState(() {
        imagefile = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Faild to pick image $e');
    }
  }

  double currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: width / 20.0, bottom: height / 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //leading  Text
          const ReuseableListTile(
              lead: 'Cancel', trail: '1/2', color: Colors.red),
          SizedBox(height: height / 80),
          // Container with Some Data
          InkWell(
            splashColor: Colors.blue,
            highlightColor: Colors.green,
            onTap: () {},
            child: Container(
                height: height * 0.25,
                width: width * .9,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 196, 195, 195),
                        width: width / 200),
                    borderRadius: BorderRadius.circular(height / 40)),
                child: Center(
                  child: imagefile != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(height / 40),
                          child: Image.file(imagefile!,
                              width: width / 1,
                              height: height / 4,
                              fit: BoxFit.cover),
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Icon(
                                Icons.image,
                                size: height / 10,
                                color: Colors.blueGrey[400],
                              ),
                              Text(
                                'Add Cover Photo',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blueGrey[800],
                                    fontSize: height / 35),
                              ),
                              Text(
                                '(up to 12 Mb)',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blueGrey[400],
                                    fontSize: height / 45),
                              )
                            ]),
                )),
          ),
          //picture selection Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //  Buttons 1
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.green,
                  onPressed: () => getImage(ImageSource.camera),
                  child: const Text(
                    'Camera',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )),
              //  Buttons 2
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.green,
                onPressed: () => getImage(ImageSource.gallery),
                child: const Text(
                  'Gallery',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          // Food Name data
          SizedBox(
            height: height / 40,
          ),
          Text(
            'Food Name',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey[800],
                fontSize: height / 35),
          ),
          SizedBox(
            height: height / 50,
          ),
          HintTextField(hintText: 'Enter food name'),
          // Description
          SizedBox(
            height: height / 50,
          ),
          Text(
            'Description',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey[800],
                fontSize: height / 35),
          ),
          SizedBox(
            height: height / 50,
          ),
          HintTextField(
              hintText: 'Tell a little about your food', textWordsLenght: 400),
          // Duration data
          SizedBox(
            height: height * .009,
          ),
          Text(
            'Cooking Duration',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey[800],
                fontSize: height / 35),
          ),
          SizedBox(
            height: height / 50,
          ),
          Row(children: [
            SizedBox(width: width / 50),
            Text('<10',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: height / 40,
                )),
            SizedBox(width: width / 3),
            Text('30',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: height / 35,
                )),
            SizedBox(width: width / 3.8),
            Text('>60',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: height / 35,
                ))
          ]),
          Column(children: [
            Slider(
                value: currentvalue,
                onChanged: (value) {
                  setState(() {
                    currentvalue = value;
                  });
                }),
          ]),
          ReusableButton(
              backgroundColor: Colors.green[600],
              text: "Next",
              textColor: Colors.white,
              press: '/UploadScreen2')
        ]),
      ),
    )));
  }
}
