import 'package:flutter/material.dart';
import 'package:penyuluhan/models/chicken_article_details.dart';
import 'package:penyuluhan/views/chicken_article_details.dart';

class ChickenArticleList extends StatelessWidget {
  //final ArticleDetail articleDetail;

  const ChickenArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFF6),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Color(0xFF0356B4),
          title: Text(
            'Article List',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
            itemCount: chickenArticleDetails.length,
            itemBuilder: (context, index) {
              final chickenArticleDetail = chickenArticleDetails[index];
              return Card(
                child: ListTile(
                    // leading: CircleAvatar(
                    //   radius: 28,
                    //   backgroundImage: NetworkImage(chickenArticleDetail.image),
                    // ),
                    title: Text(chickenArticleDetail.title),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChickenArticleDetails(
                            chickenArticleDetail: chickenArticleDetail),
                      ));
                    }),
              );
            }));
  }
}
