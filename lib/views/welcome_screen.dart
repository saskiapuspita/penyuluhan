import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:penyuluhan/views/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            Expanded(
              flex: 3,
              child: Container(
                //color: Colors.lightBlue,
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [Image.asset("assets/images/farm_house.png")],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.lightBlue,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const Text("Learning everything",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold)),
                        const Spacer(),
                        const Text(
                          "Learn with pleasure with us\n, where you are!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            wordSpacing: 2.5,
                            height: 1.5,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(
                          flex: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MaterialButton(
                              height: 60,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              color: Colors.pink,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              },
                              child: const Text(
                                "Get Started",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
