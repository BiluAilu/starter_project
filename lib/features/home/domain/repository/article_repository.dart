
import 'package:dartz/dartz.dart';
import 'package:starter_project/core/error/failures.dart';
import 'package:starter_project/features/home/data/model/article_model.dart';
import 'package:starter_project/features/home/domain/entity/article.dart';

abstract class ArticleRepository {

// List of Articles
  Future<Either<Failure,List<Article>>>getAll();

// Searched List of Articles
  Future<Either<Failure,List<Article>>>search(String term);
  
  // One article
  Future<Either<Failure,Article>>viewOne({required ArticleModel article});



  
}