import 'package:flutter/material.dart';
import 'package:penyuluhan/models/goat_article_details.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class GoatArticleDetails extends StatelessWidget {
  final GoatArticleDetail goatArticleDetail;
  const GoatArticleDetails({required this.goatArticleDetail, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF6),
      appBar: AppBar(
        backgroundColor: Color(0xFF0356B4),
        title: Text(goatArticleDetail.title),
      ),
      body: YoutubePlayerPage(
        goatArticleDetail: goatArticleDetail,
      ),
    );
  }
}

class YoutubePlayerPage extends StatefulWidget {
  final GoatArticleDetail goatArticleDetail;
  const YoutubePlayerPage({required this.goatArticleDetail, super.key});

  @override
  State<YoutubePlayerPage> createState() => _YoutubePlayerPageState();
}

class _YoutubePlayerPageState extends State<YoutubePlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId =
        YoutubePlayer.convertUrlToId(widget.goatArticleDetail.youtubeLink);
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
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
      ),
    );
  }
}
