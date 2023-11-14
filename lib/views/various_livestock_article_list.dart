import 'package:flutter/material.dart';
import 'package:penyuluhan/models/various_livestock_article_details.dart';
import 'package:penyuluhan/views/various_livestock_article_details.dart';

class VariousLivestockArticleList extends StatelessWidget {
  const VariousLivestockArticleList({super.key});

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
            itemCount: variousLivestockArticleDetails.length,
            itemBuilder: (context, index) {
              final variousLivestockArticleDetail =
                  variousLivestockArticleDetails[index];
              return Card(
                child: ListTile(
                    // leading: CircleAvatar(
                    //   radius: 28,
                    //   backgroundImage: NetworkImage(chickenArticleDetail.image),
                    // ),
                    title: Text(variousLivestockArticleDetail.title),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => VariousLivestockArticleDetails(
                            variousLivestockArticleDetail:
                                variousLivestockArticleDetail),
                      ));
                    }),
              );
            }));
  }
}
