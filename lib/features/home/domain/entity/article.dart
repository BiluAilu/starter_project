import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';



class Article extends Equatable{

  String title;
  String subtitle;
  String authorName;
  DateTime postDate;
  String content;
  String imageUrl;

  Article({required this.title,required this.subtitle,required this.authorName,required this.postDate,required this.content,required this.imageUrl});

  @override
  List<Object?> get props => [];


}