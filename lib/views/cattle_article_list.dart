import 'package:flutter/material.dart';
import 'package:penyuluhan/models/cattle_article_details.dart';
import 'package:penyuluhan/views/cattle_article_details.dart';

import 'chicken_article_details.dart';

class CattleArticleList extends StatelessWidget {
  //final ArticleDetail articleDetail;

  const CattleArticleList({super.key});

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
            itemCount: cattleArticleDetails.length,
            itemBuilder: (context, index) {
              final cattleArticleDetail = cattleArticleDetails[index];
              return Card(
                child: ListTile(
                    // leading: CircleAvatar(
                    //   radius: 28,
                    //   backgroundImage: NetworkImage(chickenArticleDetail.image),
                    // ),
                    title: Text(cattleArticleDetail.title),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CattleArticleDetails(
                            cattleArticleDetail: cattleArticleDetail),
                      ));
                    }),
              );
            }));
  }
}
