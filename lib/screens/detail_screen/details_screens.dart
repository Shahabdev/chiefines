import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
      children: [
        Image.asset('assets/images/Food Picture.png', scale: 0.8),
        Positioned(
          top: 20,
          left: 15,
          child: IconButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Container(
                height: size.height / 10,
                decoration: const BoxDecoration(
                    backgroundBlendMode: BlendMode.softLight,
                    color: Colors.white,
                    shape: BoxShape.circle),
                child: const Center(
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white, size: 22),
                ),
              )),
        ),
        Container(
            margin: const EdgeInsets.only(top: 320),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 6,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 212, 212, 212),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(height: size.height / 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeadingText(text1: 'Cacao Maca Walnut Milk'),
                        SizedBox(height: size.height / 80),
                        Text('Food 60 mins',
                            style: TextStyle(
                                color: Colors.blueGrey[400],
                                fontWeight: FontWeight.w400,
                                fontSize: size.height / 50)),
                        SizedBox(height: size.height / 60),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/avatars/person5.png'),
                            ),
                            SizedBox(width: size.width / 80),
                            const HeadingText(text1: 'Elena Shelby'),
                            SizedBox(width: size.width / 7.8),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.green,
                              child: Icon(Icons.favorite,
                                  size: 18, color: Colors.green[200]),
                            ),
                            const HeadingText(text1: ' 278 Likes')
                          ],
                        ),
                        SizedBox(height: size.height / 60),
                        Divider(
                          thickness: 3,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: size.height / 60),
                        const HeadingText(text1: 'Description'),
                        SizedBox(height: size.height / 70),
                        Text(
                            'Your Recipe has been uploadded, you can see it on your profile ,i Have use 3 ingridents in this recipe i hope that you guys will liked also try it in your your home  ',
                            style: TextStyle(
                                color: Colors.blueGrey[400],
                                fontWeight: FontWeight.w400,
                                fontSize: size.height / 50)),
                        SizedBox(height: size.height / 60),
                        Divider(
                          thickness: 3,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: size.height / 60),
                        const HeadingText(text1: 'Ingredients'),
                        SizedBox(height: size.height / 60),
                        const IngredientRow(text: '4 Eggs'),
                        SizedBox(height: size.height / 60),
                        const IngredientRow(text: '1/2 Butter'),
                        SizedBox(height: size.height / 60),
                        const IngredientRow(text: '1/2 Suggar'),
                        SizedBox(height: size.height / 60),
                        Divider(
                          thickness: 3,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: size.height / 60),
                        const HeadingText(text1: 'Steps'),
                        SizedBox(height: size.height / 60),
                        const Steps(
                          image: 'assets/images/Rectangle 219.png',
                          icon: Icons.looks_one,
                          descripion:
                              'Your Recipe has been uploadded, you can see it on your profile ,i Have use 3 ingridents in this recipe i hope that you guys will liked also try it in your your home  ',
                        ),
                        SizedBox(height: size.height / 40),
                        const Steps(
                          image: 'assets/images/Rectangle 219.png',
                          icon: Icons.looks_two,
                          descripion:
                              'Your Recipe has been uploadded, you can see it on your profile ,i Have use 3 ingridents in this recipe i hope that you guys will liked also try it in your your home  ',
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    )));
  }
}

// Steps Class
class Steps extends StatelessWidget {
  const Steps({
    Key? key,
    required this.descripion,
    required this.icon,
    required this.image,
  }) : super(key: key);

  final String descripion;
  final IconData icon;
  final String image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.blueGrey[800]),
          SizedBox(width: size.width / 50),
          Expanded(
            child: Column(
              children: [
                Text(descripion,
                    style: TextStyle(
                        color: Colors.blueGrey[400],
                        fontWeight: FontWeight.w400,
                        fontSize: size.height / 50)),
                SizedBox(height: size.height / 60),
                Image.asset(image)
              ],
            ),
          ),
        ]);
  }
}

// HeadingText Class
class HeadingText extends StatelessWidget {
  const HeadingText({
    Key? key,
    required this.text1,
  }) : super(key: key);

  final String text1;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Text(text1,
        style: TextStyle(
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.w600,
            fontSize: size.height / 43));
  }
}

// IngredientRow Class
class IngredientRow extends StatelessWidget {
  const IngredientRow({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: Colors.green[100],
          child: Icon(
            Icons.done,
            color: Colors.green,
            size: size.height / 45,
          ),
        ),
        SizedBox(width: size.width / 80),
        Text(text,
            style: TextStyle(
                color: Colors.blueGrey[800],
                fontWeight: FontWeight.w500,
                fontSize: size.height / 45))
      ],
    );
  }
}

  
    //var size = MediaQuery.of(context).size;
    

