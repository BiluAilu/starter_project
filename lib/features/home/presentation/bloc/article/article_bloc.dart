import 'package:bloc/bloc.dart';
import 'package:starter_project/core/error/failures.dart';
import 'package:starter_project/core/usecase/usecase.dart';
import 'package:starter_project/core/utils/functions.dart';
import 'package:starter_project/features/home/domain/usecases/get_all_articles_usecase.dart';
import 'package:starter_project/features/home/domain/usecases/search_article_usecase.dart';
import 'dart:async';

import 'package:starter_project/features/home/presentation/bloc/article/article_event.dart';
import 'package:starter_project/features/home/presentation/bloc/article/article_state.dart.dart';

class ArticleBloc extends Bloc<ArticleEvent,ArticleState>{
 final SearchArticles searchArticles;
 final GetAllArticles getAllArticles;

  ArticleState get initialState=>Empty();

 ArticleBloc( {required this.getAllArticles,required this.searchArticles}):super(Empty()){
  on<GetListOfArticle>((event, emit) async{
    
    emit(Loading());

    final failureOrArticles=await getAllArticles(NoParams());
    failureOrArticles.fold((failure){
        emit(Error(message:mapFailerToMessage(failure) ));
    }, (articles){
        emit(Loaded(articles: articles));

    });
  });


  on<GetSearchOfArticle>((event, emit)async {
      final failureOrArticles= await searchArticles("");
  });
 }

}

