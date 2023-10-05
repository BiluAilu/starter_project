import 'package:equatable/equatable.dart';



class Article extends Equatable{

  String title;
  String subtitle;
  String authorName;
  DateTime postDate;

  Article({required this.title,required this.subtitle,required this.authorName,required this.postDate});

  @override
  List<Object?> get props => [];


}