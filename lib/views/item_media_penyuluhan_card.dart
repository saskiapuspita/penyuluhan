import 'package:flutter/material.dart';
import 'package:penyuluhan/constants.dart';
import 'package:penyuluhan/models/category.dart';

class ItemMediaPenyuluhanCard extends StatelessWidget {
  final Category category;
  final VoidCallback press;
  const ItemMediaPenyuluhanCard(
      {super.key, required this.category, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              height: 100,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.white, //category.color,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ]),
              child: Image.asset(category.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Center(
              child: Text(
                category.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blueGrey),
                //style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
