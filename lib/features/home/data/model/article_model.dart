
import 'package:starter_project/features/home/domain/entity/article.dart';

class ArticleModel extends Article{
  ArticleModel({required super.title, required super.subtitle, required super.authorName, required super.postDate, required super.content,required super.imageUrl});

  factory ArticleModel.fromJson(Map<String,dynamic> json){
    return ArticleModel(
      title: json["title"],
       subtitle: json["subtitle"], 
       authorName: json["authorName"],
        postDate: DateTime.parse(json["postDate"]),
        content: json["content"],
        imageUrl: json["imageUrl"]
        
        );
  }


  Map<String,dynamic> toJson(){
    return{
        'title':title,
        'subtitle':subtitle,
        'authorName':authorName,
        'postDate':postDate.toString(),
        'content':content,
        'imageUrl':imageUrl
    };
  }

}