import 'package:flutter/material.dart';
import 'package:penyuluhan/models/goat_article_details.dart';
import 'package:penyuluhan/views/goat_article_details.dart';

class GoatArticleList extends StatelessWidget {
  //final ArticleDetail articleDetail;

  const GoatArticleList({super.key});

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
            itemCount: goatArticleDetails.length,
            itemBuilder: (context, index) {
              final goatArticleDetail = goatArticleDetails[index];
              return Card(
                child: ListTile(
                    // leading: CircleAvatar(
                    //   radius: 28,
                    //   backgroundImage: NetworkImage(chickenArticleDetail.image),
                    // ),
                    title: Text(goatArticleDetail.title),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GoatArticleDetails(
                            goatArticleDetail: goatArticleDetail),
                      ));
                    }),
              );
            }));
  }
}
