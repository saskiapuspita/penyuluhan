import 'package:flutter/material.dart';
import 'package:penyuluhan/models/livestock_product_article_details.dart';
import 'package:penyuluhan/views/livestock_product_article_details.dart';

class LivestockProductArticleList extends StatelessWidget {
  //final ArticleDetail articleDetail;

  const LivestockProductArticleList({super.key});

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
            itemCount: livestockProductArticleDetails.length,
            itemBuilder: (context, index) {
              final livestockProductArticleDetail =
                  livestockProductArticleDetails[index];
              return Card(
                child: ListTile(
                    // leading: CircleAvatar(
                    //   radius: 28,
                    //   backgroundImage: NetworkImage(chickenArticleDetail.image),
                    // ),
                    title: Text(livestockProductArticleDetail.title),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LivestockProductArticleDetails(
                            livestockProductArticleDetail:
                                livestockProductArticleDetail),
                      ));
                    }),
              );
            }));
  }
}
