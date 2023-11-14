import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penyuluhan/constants.dart';
import 'package:penyuluhan/models/category.dart';
import 'package:penyuluhan/views/item_media_penyuluhan_card.dart';

class ItemMediaPenyuluhan extends StatelessWidget {
  const ItemMediaPenyuluhan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.blueGrey, size: 30),
          title: const Text(
            'UB Sobat Ternak',
            style:
                TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
          ),
          // actions: [
          //   IconButton(
          //       onPressed: () {}, icon: const Icon(CupertinoIcons.search))
          // ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: Container(
                  child: GridView.builder(
                    itemCount: categories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPaddin,
                      crossAxisSpacing: kDefaultPaddin,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => ItemMediaPenyuluhanCard(
                      category: categories[index],
                      press: () {},
                      // => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ProductDetailsPage(
                      //       product: products[index],
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
