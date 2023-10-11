 import 'package:equatable/equatable.dart';
import 'package:starter_project/features/home/domain/entity/article.dart';

abstract class ArticleEvent extends Equatable{

const ArticleEvent();


@override
List<Object>get props=>[];

}



class GetListOfArticle extends ArticleEvent{

  
}

class GetSearchOfArticle extends ArticleEvent{
  final String title;
  GetSearchOfArticle(this.title);


}