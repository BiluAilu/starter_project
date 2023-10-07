


import 'package:starter_project/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:starter_project/core/usecase/usecase.dart';
import 'package:starter_project/features/home/domain/entity/article.dart';
import 'package:starter_project/features/home/domain/repository/article_repository.dart';

class SearchArticles implements Usecase<List<Article>,String>{
    final ArticleRepository repository;

    SearchArticles(this.repository);
  @override
  Future<Either<Failure, List<Article>>> call(String params) async{
      return await repository.getAll();
   
  }



}