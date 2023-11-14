import 'package:flutter/material.dart';
import 'package:penyuluhan/models/various_livestock_article_details.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VariousLivestockArticleDetails extends StatelessWidget {
  final VariousLivestockArticleDetail variousLivestockArticleDetail;
  const VariousLivestockArticleDetails(
      {required this.variousLivestockArticleDetail, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF6),
      appBar: AppBar(
        backgroundColor: Color(0xFF0356B4),
        title: Text(variousLivestockArticleDetail.title),
      ),
      body: YoutubePlayerPage(
        variousLivestockArticleDetail: variousLivestockArticleDetail,
      ),
    );
  }
}

class YoutubePlayerPage extends StatefulWidget {
  final VariousLivestockArticleDetail variousLivestockArticleDetail;
  const YoutubePlayerPage(
      {required this.variousLivestockArticleDetail, super.key});

  @override
  State<YoutubePlayerPage> createState() => _YoutubePlayerPageState();
}

class _YoutubePlayerPageState extends State<YoutubePlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(
        widget.variousLivestockArticleDetail.youtubeLink);
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
