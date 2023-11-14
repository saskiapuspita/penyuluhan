import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:penyuluhan/models/chicken_article_details.dart';

class ArticleList extends StatelessWidget {
  //final ArticleDetail articleDetail;

  const ArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Articles Details'),
        ),
        body: ListView.builder(
          itemCount: chickenArticleDetails.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage:
                    NetworkImage(chickenArticleDetails[index].image),
              ),
              title: Text(chickenArticleDetails[index].title),
              trailing: const Icon(Icons.arrow_forward),
            ),
          ),
        ));
  }
}
