import 'package:flutter/material.dart';
import 'package:penyuluhan/models/livestock_business_article_details.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LivestockBusinessArticleDetails extends StatelessWidget {
  final LivestockBusinessArticleDetail livestockBusinessArticleDetail;
  const LivestockBusinessArticleDetails(
      {required this.livestockBusinessArticleDetail, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF6),
      appBar: AppBar(
        backgroundColor: Color(0xFF0356B4),
        title: Text(livestockBusinessArticleDetail.title),
      ),
      body: YoutubePlayerPage(
        livestockBusinessArticleDetail: livestockBusinessArticleDetail,
      ),
    );
  }
}

class YoutubePlayerPage extends StatefulWidget {
  final LivestockBusinessArticleDetail livestockBusinessArticleDetail;
  const YoutubePlayerPage(
      {required this.livestockBusinessArticleDetail, super.key});

  @override
  State<YoutubePlayerPage> createState() => _YoutubePlayerPageState();
}

class _YoutubePlayerPageState extends State<YoutubePlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(
        widget.livestockBusinessArticleDetail.youtubeLink);
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
