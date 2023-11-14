import 'package:flutter/material.dart';
import 'package:penyuluhan/views/category_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List welcomeImages = [
    "1.png",
    "2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: welcomeImages.length,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryPage()));
            },
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/images/" + welcomeImages[index]),
                      fit: BoxFit.fill)),
            ),
          );
        },
      ),
    );
  }
}
