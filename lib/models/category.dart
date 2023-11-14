import 'package:flutter/material.dart';

class Category {
  final String image, title;
  final int id;
  final Color color;

  Category(
      {required this.image,
      required this.title,
      required this.id,
      required this.color});
}

List<Category> categories = [
  Category(
      id: 1,
      title: "Media Penyuluhan",
      image: "assets/images/group-discussion.png",
      color: Color(0xFF3D82AE)),
  Category(
      id: 2,
      title: "Informasi Penyuluh",
      image: "assets/images/information.png",
      color: Color.fromARGB(255, 185, 182, 127)),
  Category(
      id: 3,
      title: "Toko Online",
      image: "assets/images/marketplace.png",
      color: Color(0xFF989493)),
  Category(
      id: 3,
      title: "Konsultasi Peternakan",
      image: "assets/images/consultation.png",
      color: Color.fromARGB(255, 225, 120, 94)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
