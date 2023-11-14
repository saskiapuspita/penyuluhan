import 'package:flutter/material.dart';
import 'package:penyuluhan/views/bottom_bar.dart';
import 'package:penyuluhan/views/category_page.dart';
import 'package:penyuluhan/views/dashboard_page.dart';
import 'package:penyuluhan/views/home_page.dart';
import 'package:penyuluhan/views/item_media_penyuluhan.dart';
import 'package:penyuluhan/views/splash_screen.dart';
import 'package:penyuluhan/views/welcome_page.dart';
import 'package:penyuluhan/views/welcome_screen.dart';
import 'package:penyuluhan/views/youtube_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UB Sobat Ternak',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true
          // primaryColor: Colors.white,
          // textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      debugShowCheckedModeBanner: false,
      home: //const SplashScreen()
          //const WelcomeScreen()
          const WelcomePage(),
      //YoutubePlayerPage()
      //CategoryPage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Article> listArticle = [];
//   Repository repository = Repository();

//   getData() async {
//     listArticle = await repository.getArticles();
//   }

//   @override
//   void initState() {
//     getData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Demo Home Page'),
//       ),
//       body: Container(),
//     );
//   }
// }
