import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:starter_project/core/network/network_info.dart';
import 'package:starter_project/features/home/data/repository/article_repository_implementation.dart';
import 'package:starter_project/features/home/data/resources/article_remote_data_source.dart';
import 'package:starter_project/features/home/domain/repository/article_repository.dart';
import 'package:starter_project/features/home/domain/usecases/get_all_articles_usecase.dart';
import 'package:starter_project/features/home/domain/usecases/search_article_usecase.dart';
import 'package:starter_project/features/home/presentation/bloc/article/article_event.dart';
import 'features/home/presentation/bloc/article/article_bloc.dart';
import 'package:http/http.dart' as http;
final sl=GetIt.instance;

Future<void> init()async{

// ! Features

// * First let's register the bloc

sl.registerFactory(() => ArticleBloc(getAllArticles: sl(), searchArticles: sl()));

// * Then let's register Usecases


// ? And remember to to use registerFactory() for bloc register only , but for the rest let's try to use just registerLazySingleton() or registerSingleton();

sl.registerLazySingleton(() => GetAllArticles(sl()));
sl.registerLazySingleton(() => SearchArticles(sl()));

// * Repository 

sl.registerLazySingleton<ArticleRepository>(() => ArticleRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()));


// * Data sources

sl.registerLazySingleton<ArticleRemoteDataSource>(() => ArticleRemoteDataSourceImpl(client: sl()));

// ! Core
// * Network
sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

// ! External (Packages)

sl.registerLazySingleton(() => InternetConnectionChecker());
sl.registerLazySingleton(() => http.Client);




}