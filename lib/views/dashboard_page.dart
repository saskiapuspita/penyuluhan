import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/utils.dart';
import 'package:penyuluhan/constants.dart';
import 'package:penyuluhan/models/product.dart';
import 'package:penyuluhan/views/item_card.dart';
import 'package:penyuluhan/views/item_dashboard.dart';
import 'package:penyuluhan/views/product_details_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //Theme.of(context).colorScheme.primary, //.withOpacity(.2),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // leading: Padding(
          //   padding: const EdgeInsets.only(left: 15),
          //   child: CircleAvatar(
          //     backgroundImage: AssetImage('assets/images/userlogo.png'),
          //   ),
          // ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.blueGrey, size: 30),
          title: const Text(
            'UB Sobat Ternak',
            style:
                TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.search))
          ],
        ),
        body: Column(
          children: [
            //const SizedBox(height: 100),
            // Text(
            //   '100,000',
            //   style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold,
            //       letterSpacing: 2),
            // ),
            // const SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Icon(
            //       CupertinoIcons.add_circled,
            //       color: Colors.green.shade600,
            //     ),
            //     const SizedBox(
            //       width: 5,
            //     ),
            //     Text(
            //       'Rs. 2,500',
            //       style: Theme.of(context)
            //           .textTheme
            //           .titleSmall
            //           ?.copyWith(color: Colors.green.shade600),
            //     ),
            //     const SizedBox(
            //       width: 8,
            //     ),
            //     Text(
            //       'Today',
            //       style: Theme.of(context).textTheme.bodySmall?.copyWith(
            //           color: Colors.white, fontWeight: FontWeight.w300),
            //     )
            //   ],
            // ),
            // const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ElevatedButton.icon(
            //         onPressed: () {},
            //         icon: const Icon(CupertinoIcons.add_circled),
            //         style: ElevatedButton.styleFrom(
            //             backgroundColor: Colors.amber.shade900,
            //             foregroundColor: Colors.white),
            //         label: const Text('Deposit')),
            //     const SizedBox(width: 20),
            //     ElevatedButton.icon(
            //         onPressed: () {},
            //         icon: const Icon(Icons.file_upload_outlined),
            //         style:
            //             ElevatedButton.styleFrom(foregroundColor: Colors.black),
            //         label: const Text('Withdaw')),
            //   ],
            // ),
            const SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: Container(
                  child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPaddin,
                      crossAxisSpacing: kDefaultPaddin,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(
                            product: products[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            //     child: GridView.builder(
            //       itemCount: products.length,
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2,
            //         mainAxisSpacing: kDefaultPaddin,
            //         crossAxisSpacing: kDefaultPaddin,
            //         childAspectRatio: 0.75,
            //       ),
            //       itemBuilder: (context, index) => ItemCard(
            //         product: products[index],
            //         press: () => Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => ProductDetailsPage(
            //               product: products[index],
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     padding: const EdgeInsets.only(top: 20),
            //     decoration: const BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(50),
            //             topRight: Radius.circular(50)),
            //         color: Colors.white),
            //     child: GridView.count(
            //       padding:
            //           const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //       crossAxisCount: 2,
            //       mainAxisSpacing: 10,
            //       crossAxisSpacing: 10,
            //       children: [
            //         ItemDashboard(
            //             title: 'Media Penyuluhan',
            //             image: 'group-discussion.png'),
            //         ItemDashboard(title: 'Informasi', image: 'information.png'),
            //         ItemDashboard(
            //             title: 'Marketplace', image: 'marketplace.png'),
            //         ItemDashboard(
            //             title: 'Konsultasi Online', image: 'consultation.png'),
            //       ],
            //     ),
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     padding: const EdgeInsets.only(top: 20),
            //     decoration: const BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(50),
            //             topRight: Radius.circular(50)),
            //         color: Colors.white),
            //     child: GridView.count(
            //       padding:
            //           const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //       crossAxisCount: 2,
            //       mainAxisSpacing: 10,
            //       crossAxisSpacing: 10,
            //       children: [
            //         ItemDashboard(
            //             title: 'Media Penyuluhan',
            //             image: 'group-discussion.png'),
            //         ItemDashboard(title: 'Informasi', image: 'information.png'),
            //         ItemDashboard(
            //             title: 'Marketplace', image: 'marketplace.png'),
            //         ItemDashboard(
            //             title: 'Konsultasi Online', image: 'consultation.png'),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ));
  }
}
