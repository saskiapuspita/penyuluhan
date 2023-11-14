import 'package:flutter/material.dart';
import 'package:penyuluhan/views/commodities_category.dart';
import 'package:penyuluhan/views/commodities_page.dart';
import 'package:penyuluhan/views/dashboard_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF6),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF0356B4),
        title: Text(
          "UB Sobat Ternak",
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
                        builder: (context) => ComoditiesCategory()));
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
                        'assets/images/penyuluhan.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Penyuluhan",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashboardPage()));
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
                        'assets/images/toko-online.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Toko Online",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
              ),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('This page is under construction'),
                          content: Image.asset(
                            'assets/images/under-construction.png',
                            height: 200,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Close'),
                            )
                          ],
                        ));
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
                        'assets/images/informasi.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Informasi",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
              ),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('This page is under construction'),
                          content: Image.asset(
                            'assets/images/under-construction.png',
                            height: 200,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Close'),
                            )
                          ],
                        ));
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
                        'assets/images/konsultasi.png',
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Konsultasi",
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
