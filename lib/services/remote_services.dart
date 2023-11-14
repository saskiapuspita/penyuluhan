import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:penyuluhan/models/articles.dart';
import 'package:penyuluhan/views/const.dart';

class RemoteService {
  var client = http.Client();

  Future<List<Article>?> getArticle() async {
    var uri = Uri.parse('$baseUrl/articles');
    final response =
        await http.get(uri, headers: {"Content-Type": "application/json"});

    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      // return Article.fromJson(
      //     jsonDecode(response.body) as Map<String, dynamic>);
      //return jsonResponse.map((data) => new Article.fromJson(data)).toList();
      var dataOjbsJson = jsonDecode(response.body)['data'] as List;
      print(dataOjbsJson);
      List<Article> dataObjs =
          dataOjbsJson.map((dataObjs) => Article.fromJson(dataObjs)).toList();
      print(dataObjs);
      return dataObjs;
    } else {
      throw Exception('Failed to load Data');
    }
  }

  Future<void> getArticleContents() async {
    var uri = Uri.parse('$baseUrl/articles');
    final response =
        await http.get(uri, headers: {"Content-Type": "application/json"});

    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body) as Map;
      final data = decoded['data'] as Map;
      print(data['category']);
      for (final articleData in data.keys) {
        final value = data[articleData];
        print('$articleData, $value');
      }
      //return jsonResponse.map((data) => new Article.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load Data');
    }
  }
}
