import 'package:flutter/material.dart';
import 'package:penyuluhan/views/item_dashboard.dart';

class CommoditiesPage extends StatelessWidget {
  const CommoditiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 214,
            206), //Theme.of(context).colorScheme.primary.withOpacity(.5),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "Komoditas Ternak",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          //backgroundColor: Color.fromARGB(255, 185, 182, 127),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(10),
          //const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            ItemDashboard(title: 'Ayam', image: 'ayam.png'),
            ItemDashboard(title: 'Sapi', image: 'cattle.png'),
            ItemDashboard(title: 'Kambing / Domba', image: 'goat.png'),
            ItemDashboard(title: 'Aneka Ternak', image: 'bee.png'),
            ItemDashboard(
                title: 'Teknologi Hasil Ternak', image: 'sausage.png'),
            ItemDashboard(title: 'Bisnis Peternakan', image: 'business.png'),
          ],
        ));
  }
}
