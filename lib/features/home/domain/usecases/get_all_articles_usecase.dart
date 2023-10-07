

import 'package:starter_project/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:starter_project/core/usecase/usecase.dart';
import 'package:starter_project/features/home/domain/entity/article.dart';
import 'package:starter_project/features/home/domain/repository/article_repository.dart';

class GetAllArticles implements Usecase<List<Article>,NoParams>{
    final ArticleRepository repository;

    GetAllArticles(this.repository);
  @override
  Future<Either<Failure, List<Article>>> call(NoParams params) async{
      return await repository.getAll();
   
  }



}