import 'package:flutter/material.dart';
import 'package:penyuluhan/models/livestock_business_article_details.dart';
import 'package:penyuluhan/views/livestock_business_article_details.dart';

class LivestockBusinessArticleList extends StatelessWidget {
  const LivestockBusinessArticleList({super.key});

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
            itemCount: livestockBusinessArticleDetails.length,
            itemBuilder: (context, index) {
              final livestockBusinessArticleDetail =
                  livestockBusinessArticleDetails[index];
              return Card(
                child: ListTile(
                    // leading: CircleAvatar(
                    //   radius: 28,
                    //   backgroundImage: NetworkImage(chickenArticleDetail.image),
                    // ),
                    title: Text(livestockBusinessArticleDetail.title),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LivestockBusinessArticleDetails(
                            livestockBusinessArticleDetail:
                                livestockBusinessArticleDetail),
                      ));
                    }),
              );
            }));
  }
}
