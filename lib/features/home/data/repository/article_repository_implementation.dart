import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:starter_project/core/error/failures.dart';
import 'package:starter_project/core/network/network_info.dart';
import 'package:starter_project/features/home/data/model/article_model.dart';
import 'package:starter_project/features/home/data/resources/article_remote_data_source.dart';
import 'package:starter_project/features/home/domain/entity/article.dart';
import 'package:starter_project/features/home/domain/repository/article_repository.dart';



class ArticleRepositoryImpl implements ArticleRepository {
  
  final ArticleRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  ArticleRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });
 

  @override
  Future<Either<Failure, List<Article>>> getAll() async{

    if (await networkInfo.isConnected) {
      try {
        final remoteArticles = await remoteDataSource.getArticles();
        
        return Right(remoteArticles);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    } else {
      
      return Left(NetworkFailure());

    }
    

  }

  @override
  Future<Either<Failure, List<Article>>> search(String term) {
   
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Article>> viewOne({required ArticleModel article}) {
  
    throw UnimplementedError();
  }
}