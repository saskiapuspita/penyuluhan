import 'package:flutter/material.dart';
import 'package:penyuluhan/models/cattle_article_details.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CattleArticleDetails extends StatelessWidget {
  final CattleArticleDetail cattleArticleDetail;
  const CattleArticleDetails({required this.cattleArticleDetail, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF6),
      appBar: AppBar(
        backgroundColor: Color(0xFF0356B4),
        title: Text(cattleArticleDetail.title),
      ),
      body: YoutubePlayerPage(
        cattleArticleDetail: cattleArticleDetail,
      ),
    );
  }
}

class YoutubePlayerPage extends StatefulWidget {
  final CattleArticleDetail cattleArticleDetail;
  const YoutubePlayerPage({required this.cattleArticleDetail, super.key});

  @override
  State<YoutubePlayerPage> createState() => _YoutubePlayerPageState();
}

class _YoutubePlayerPageState extends State<YoutubePlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId =
        YoutubePlayer.convertUrlToId(widget.cattleArticleDetail.youtubeLink);
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
