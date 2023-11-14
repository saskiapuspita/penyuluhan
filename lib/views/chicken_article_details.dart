import 'package:flutter/material.dart';
import 'package:penyuluhan/models/chicken_article_details.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ChickenArticleDetails extends StatelessWidget {
  final ChickenArticleDetail chickenArticleDetail;
  const ChickenArticleDetails({required this.chickenArticleDetail, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF6),
      appBar: AppBar(
        backgroundColor: Color(0xFF0356B4),
        title: Text(chickenArticleDetail.title),
      ),
      body: YoutubePlayerPage(
        chickenArticleDetail: chickenArticleDetail,
      ),
    );
  }
}

class YoutubePlayerPage extends StatefulWidget {
  final ChickenArticleDetail chickenArticleDetail;
  const YoutubePlayerPage({required this.chickenArticleDetail, super.key});

  @override
  State<YoutubePlayerPage> createState() => _YoutubePlayerPageState();
}

class _YoutubePlayerPageState extends State<YoutubePlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId =
        YoutubePlayer.convertUrlToId(widget.chickenArticleDetail.youtubeLink);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Youtube Player"),
      // ),
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
      ),
    );
  }
}
