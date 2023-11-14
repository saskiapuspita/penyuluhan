import 'package:flutter/material.dart';
import 'package:penyuluhan/models/livestock_product_article_details.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LivestockProductArticleDetails extends StatelessWidget {
  final LivestockProductArticleDetail livestockProductArticleDetail;
  const LivestockProductArticleDetails(
      {required this.livestockProductArticleDetail, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF6),
      appBar: AppBar(
        backgroundColor: Color(0xFF0356B4),
        title: Text(livestockProductArticleDetail.title),
      ),
      body: YoutubePlayerPage(
        livestockProductArticleDetail: livestockProductArticleDetail,
      ),
    );
  }
}

class YoutubePlayerPage extends StatefulWidget {
  final LivestockProductArticleDetail livestockProductArticleDetail;
  const YoutubePlayerPage(
      {required this.livestockProductArticleDetail, super.key});

  @override
  State<YoutubePlayerPage> createState() => _YoutubePlayerPageState();
}

class _YoutubePlayerPageState extends State<YoutubePlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(
        widget.livestockProductArticleDetail.youtubeLink);
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
