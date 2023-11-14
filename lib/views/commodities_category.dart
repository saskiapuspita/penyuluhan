import 'package:flutter/material.dart';
import 'package:penyuluhan/views/articles_list.dart';
import 'package:penyuluhan/views/cattle_article_list.dart';
import 'package:penyuluhan/views/chicken_article_list.dart';
import 'package:penyuluhan/views/commodities_page.dart';
import 'package:penyuluhan/views/dashboard_page.dart';
import 'package:penyuluhan/views/goat_article_list.dart';
import 'package:penyuluhan/views/livestock_business_article_list.dart';
import 'package:penyuluhan/views/livestock_product_article_list.dart';
import 'package:penyuluhan/views/various_livestock_article_list.dart';

class ComoditiesCategory extends StatefulWidget {
  const ComoditiesCategory({super.key});

  @override
  State<ComoditiesCategory> createState() => _ComoditiesCategoryState();
}

class _ComoditiesCategoryState extends State<ComoditiesCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF6),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF0356B4),
        title: Text(
          "Komoditas",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        //backgroundColor: Color.fromARGB(255, 185, 182, 127),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChickenArticleList()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/ayam.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Ayam",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CattleArticleList()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/cattle.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Sapi",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GoatArticleList()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/goat.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Kambing / Domba",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VariousLivestockArticleList()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/bee.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Aneka Ternak",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LivestockProductArticleList()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/sausage.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Teknologi Hasil Ternak",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LivestockBusinessArticleList()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/business.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Bisnis Peternakan",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
              ),
            ),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
        ),
      ),
    );
  }
}
