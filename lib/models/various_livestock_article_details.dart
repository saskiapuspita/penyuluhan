import 'package:flutter/material.dart';

class VariousLivestockArticleDetail {
  final String title, author, description, image, youtubeLink;
  final int id;
  final Color color;

  VariousLivestockArticleDetail(
      {required this.title,
      required this.author,
      required this.description,
      required this.youtubeLink,
      required this.image,
      required this.id,
      required this.color});
}

List<VariousLivestockArticleDetail> variousLivestockArticleDetails = [
  VariousLivestockArticleDetail(
      id: 1,
      title: "Teknologi SEMEN Sexing oleh Lab Reproduksi Fapet UB",
      author: "xxx",
      description:
          "Baik pada bagian putih maupun kuning telur, sama-sama mengandung sumber protein, vitamin, kalori, dan berbagai jenis mineral. Banyak orang beranggapan makan telur pasti bikin kolesterol tinggi. Padahal, faktanya makan telur juga bisa membantu menjaga kesehatan jantung dan pembuluh darah.",
      youtubeLink: "https://www.youtube.com/watch?v=tpEEEs6wYRA",
      image: "assets/images/telur.png",
      color: Color.fromARGB(255, 185, 182, 127)),
  VariousLivestockArticleDetail(
      id: 1,
      title: "Inseminasi Buatan pada Ayam Buras Fapet UB",
      author: "xxx",
      description:
          "Baik pada bagian putih maupun kuning telur, sama-sama mengandung sumber protein, vitamin, kalori, dan berbagai jenis mineral. Banyak orang beranggapan makan telur pasti bikin kolesterol tinggi. Padahal, faktanya makan telur juga bisa membantu menjaga kesehatan jantung dan pembuluh darah.",
      youtubeLink: "https://www.youtube.com/watch?v=tpEEEs6wYRA",
      image: "assets/images/telur.png",
      color: Color.fromARGB(255, 185, 182, 127)),
  VariousLivestockArticleDetail(
      id: 1,
      title: "Inseminasi Buatan Menggunakan Semen Cair",
      author: "xxx",
      description:
          "Baik pada bagian putih maupun kuning telur, sama-sama mengandung sumber protein, vitamin, kalori, dan berbagai jenis mineral. Banyak orang beranggapan makan telur pasti bikin kolesterol tinggi. Padahal, faktanya makan telur juga bisa membantu menjaga kesehatan jantung dan pembuluh darah.",
      youtubeLink: "https://www.youtube.com/watch?v=tpEEEs6wYRA",
      image: "assets/images/telur.png",
      color: Color.fromARGB(255, 185, 182, 127)),
  VariousLivestockArticleDetail(
      id: 1,
      title: "USG Hasil IB Sexing pada Sapi Perah",
      author: "Pof. Trinil, dkk",
      description:
          "Baik pada bagian putih maupun kuning telur, sama-sama mengandung sumber protein, vitamin, kalori, dan berbagai jenis mineral. Banyak orang beranggapan makan telur pasti bikin kolesterol tinggi. Padahal, faktanya makan telur juga bisa membantu menjaga kesehatan jantung dan pembuluh darah.",
      youtubeLink: "https://www.youtube.com/watch?v=tpEEEs6wYRA",
      image: "assets/images/telur.png",
      color: Color.fromARGB(255, 185, 182, 127)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
