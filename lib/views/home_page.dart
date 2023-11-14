import 'package:flutter/material.dart';
import 'package:penyuluhan/models/articles.dart';
import 'package:penyuluhan/services/remote_services.dart';
import 'package:penyuluhan/utils/app_styles.dart';
import 'package:penyuluhan/views/articles_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //late List<Article> _articles;
  //bool _isLoading = true;
  RemoteService remoteService = RemoteService();
  late Future<List<Article>?> futureArticle;
  List<Article> articles = <Article>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    futureArticle = remoteService.getArticle();
    print('futureArticle ${futureArticle}');

    futureArticle.then(
      (value) {
        setState(() {
          articles.addAll(value!);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.agriculture_outlined, color: Colors.blue.shade400),
            SizedBox(width: 10),
            Text('Ternak H-UB',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w900)),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active, color: Colors.white))
        ],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        articles[index].category,
                        style: TextStyle(
                          color: Colors.brown,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        articles[index].content,
                        style: TextStyle(
                            color: Colors.brown, fontFamily: 'Nunito'),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
      // body: ArticlesCard(
      //   title: 'My recipe',
      //   rating: '4.9',
      //   cookTime: '30 min',
      //   thumbnailUrl:
      //       'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
      // ));
    );

    // body: ArticlesCard(
    //   title: 'My recipe',
    //   rating: '4.9',
    //   cookTime: '30 min',
    //   thumbnailUrl:
    //       'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
    // ));
  }
}
