 import 'package:equatable/equatable.dart';
import 'package:starter_project/features/home/domain/entity/article.dart';

abstract class ArticleEvent extends Equatable{

const ArticleEvent();


@override
List<Object>get props=>[];

}



class GetListOfArticle extends ArticleEvent{

  final List<Article> articles;
  GetListOfArticle(this.articles);
}

class GetSearchOfArticle extends ArticleEvent{
  final List<Article> articles;
  GetSearchOfArticle(this.articles);


}