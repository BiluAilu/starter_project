

import 'dart:convert';

import 'package:starter_project/features/home/data/model/article_model.dart';
import 'package:starter_project/features/home/domain/entity/article.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';
void main() {
  final article=Article(title: "title", subtitle: "subtitle", authorName: "authorName", postDate: DateTime.parse("2023-10-05 18:18:51.000"), content: "content", imageUrl: "imageUrl");

  test('should be a subclass of Article entity', ()async {
    // assert
    expect(article, isA<Article>());
  });


  test('validate test from json file', () async{

    // Arrange
    // List<ArticleModel> posts = jsonResponse.map((dynamic post) => ArticleModel.fromJson(post)).toList();
    String jsonString=fixture('articles.json');
    final List<ArticleModel> articles= (jsonDecode(jsonString) as List)
    .map((json) => ArticleModel.fromJson(json))
    .toList();

    // Act 
    // final result=ArticleModel.fromJson(jsonMap);

    // Asset
    expect(articles, isA<List<ArticleModel>>());

  });
}