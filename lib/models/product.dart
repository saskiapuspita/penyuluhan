import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int currentStock, price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.currentStock,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

List<Product> products = [
  Product(
      id: 2,
      title: "Telur",
      currentStock: 100,
      price: 25000,
      size: 12,
      description:
          "Baik pada bagian putih maupun kuning telur, sama-sama mengandung sumber protein, vitamin, kalori, dan berbagai jenis mineral. Banyak orang beranggapan makan telur pasti bikin kolesterol tinggi. Padahal, faktanya makan telur juga bisa membantu menjaga kesehatan jantung dan pembuluh darah.",
      image: "assets/images/telur.png",
      color: Color.fromARGB(255, 185, 182, 127)),
  Product(
      id: 3,
      title: "Daging Ayam",
      currentStock: 100,
      price: 30000,
      size: 12,
      description: "Daging ayam premium, segar, dan berkualitas",
      image: "assets/images/daging-ayam-removebg.png",
      color: Color.fromARGB(255, 227, 161, 145)),
  Product(
      id: 3,
      title: "Daging Sapi",
      currentStock: 100,
      price: 110000,
      size: 12,
      description: "Daging sapi premium, segar, dan berkualitas",
      image: "assets/images/beef.png",
      color: Color(0xFF989493)),
  Product(
      id: 1,
      title: "Madu",
      currentStock: 100,
      price: 5000,
      size: 12,
      description: "Deskripsi madu",
      image: "assets/images/madu-removebg.png",
      color: Color(0xFF3D82AE)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
