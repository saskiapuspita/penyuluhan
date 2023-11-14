import 'dart:convert';

// List<Article> postFromJson(String str) =>
//     List<Article>.from(jsonDecode(str).map((x) => Article.fromJson(x)));

// String postToJson(List<Article> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// List<Article> articleListFromJson(String val) => List<Article>.from(
//     json.decode(val)['data'].map((banner) => Article.fromJson(banner)));

class Article {
  final String articleId;
  final String content;
  final String category;
  final int isPublished;
  final dynamic createdBy;
  final String createdDate;
  final dynamic updatedBy;
  final dynamic updatedDate;
  final dynamic deletedBy;
  final dynamic deletedDate;
  // final String message;
  // final List<dynamic> data;

  Article(
    this.articleId,
    this.content,
    this.category,
    this.isPublished,
    this.createdBy,
    this.createdDate,
    this.updatedBy,
    this.updatedDate,
    this.deletedBy,
    this.deletedDate,
    // required this.message, required this.data
  );

  factory Article.fromJson(dynamic json) {
    return Article(
      json["articleId"] as String,
      json["content"] as String,
      json["category"] as String,
      json["isPublished"] as int,
      json["createdBy"] as dynamic,
      json["createdDate"] as String,
      json["updatedBy"] as dynamic,
      json["updatedDate"] as dynamic,
      json["deletedBy"] as dynamic,
      json["deletedDate"] as dynamic,
    );
  }

  @override
  String toSting() {
    return '{ ${this.articleId}, ${this.content}, ${this.category}, ${this.isPublished}, ${this.createdDate}, ${this.updatedBy}, ${this.updatedDate}, ${this.deletedBy}, ${this.deletedDate} ';
  }

  // static List<Article> articlesFromSnapshot(List snapshot) {
  //   return snapshot.map((data) {
  //     return Article.fromJson(data);
  //   }).toList();
  // }

  // @override
  // String toSting() {
  //   return 'Article {articleId: $articleId, content: $content, category: $category, isPublished: $isPublished, createdDate: $createdDate}';
  // }

  // Map<String, dynamic> toJson() => {
  //       "articleId": articleId,
  //       "content": content,
  //       "category": category,
  //       "isPublished": isPublished,
  //       "createdBy": createdBy,
  //       "createdDate": createdDate,
  //       "updatedBy": updatedBy,
  //       "updatedDate": updatedDate,
  //       "deletedBy": deletedBy,
  //       "deletedDate": deletedDate
  //     };
}
