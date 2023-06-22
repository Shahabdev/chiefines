import 'package:flutter/material.dart';

class ReusableBottomSheet extends StatefulWidget {
  const ReusableBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<ReusableBottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<ReusableBottomSheet> {
  double currentvalue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 39),
      const Text('Add a Filter',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
      const SizedBox(height: 30),
      Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(width: 20),
          Text('Catagory',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.green),
              child: const Center(
                  child: Text('Food',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))),
          const SizedBox(
            width: 20,
          ),
          Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 2, color: Colors.grey)),
              child: const Center(
                  child: Text('Food',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))),
          const SizedBox(
            width: 20,
          ),
          Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 2, color: Colors.grey)),
              child: const Center(
                  child: Text('Drink',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))),
        ],
      ),
      const SizedBox(height: 30),
      Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 20),
          Text.rich(TextSpan(
              text: 'Cooking Duration',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.grey[800]),
              children: const <TextSpan>[
                TextSpan(
                    text: ' (in minutes)',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w400))
              ])),
        ],
      ),
      const SizedBox(height: 20),
      Row(children: const [
        SizedBox(width: 20),
        Text('<10',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            )),
        SizedBox(width: 140),
        Text('30',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            )),
        SizedBox(width: 130),
        Text('>60',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ))
      ]),
      Column(
        children: [
          Slider(
              value: currentvalue,
              onChanged: (value) {
                setState(() {
                  currentvalue = value;
                });
              }),
        ],
      ),
      const SizedBox(height: 30),
      Row(children: [
        const SizedBox(width: 25),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              width: 160,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: const Color.fromARGB(255, 216, 216, 216)),
              child: Center(
                  child: Text('Cancel',
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              width: 160,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.green.shade600),
              child: const Center(
                  child: Text('Done',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))),
        ),
      ])
    ]);
  }
}
