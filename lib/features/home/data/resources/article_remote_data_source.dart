import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:starter_project/core/error/exception.dart';
import 'package:starter_project/core/error/failures.dart';
import 'package:starter_project/features/home/data/model/article_model.dart';

import 'package:http/http.dart' as http;

abstract class ArticleRemoteDataSource {
  /// Calls the "https://mocki.io/v1/f52c9d10-0f2e-4cc2-9813-9c83722587f7" endpoint.
  ///
  /// Throws a [ServerFailure] for all error codes.
  Future<List<ArticleModel>> getArticles();

  Future<List<ArticleModel>> searchArticles();

  


}

class ArticleRemoteDataSourceImpl implements ArticleRemoteDataSource {
  late final http.Client client;

  ArticleRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ArticleModel>> getArticles() {
    return _getArticlesFromUrl('https://mocki.io/v1/f52c9d10-0f2e-4cc2-9813-9c83722587f7');
  }


  

    

  @override
  Future<List<ArticleModel>> searchArticles() {
  //  
    return _getArticlesFromUrl('https://mocki.io/v1/f52c9d10-0f2e-4cc2-9813-9c83722587f7');
  }

  Future<List<ArticleModel>> _getArticlesFromUrl(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      debugPrint(response.body);
      return (jsonDecode(response.body) as List)
    .map((json) => ArticleModel.fromJson(json))
    .toList();
    } else {
      throw ServerException();
    }
  }
  
}