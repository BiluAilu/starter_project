import 'package:equatable/equatable.dart';
import 'package:starter_project/features/home/domain/entity/article.dart';

abstract class ArticleState extends Equatable{
  const ArticleState();

  @override
  List<Object>get props=>[];
}

class Empty extends ArticleState{}


class Loading extends ArticleState{

}

class Loaded extends ArticleState{
  final articles;
  Loaded({required this.articles});
}

class Error extends ArticleState{

  final message;

  Error({required this.message});
}

