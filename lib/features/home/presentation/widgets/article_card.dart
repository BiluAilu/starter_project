import 'package:flutter/material.dart';
import 'package:starter_project/core/utils/size.dart';

 Widget article_card({ required BuildContext context, required String title,required String authorName,required String postDate})=>

Container(
    margin: EdgeInsets.only(top: 10,left: 20,right: 10),
    padding: EdgeInsets.all(10),

  child: Material(
    elevation: 5,
    color: Colors.white,
    
    borderRadius: BorderRadius.all(Radius.circular(15)),
    shadowColor: Colors.black,
    child: Container(
      // Screen width - 60
      width: getScreenSize(context).width*0.8,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network('https://th.bing.com/th/id/R.a2cde4aa7d6eeca411764b7dc3b9eaa3?rik=jqYjWjazXSmIjQ&pid=ImgRaw&r=0',height: 150,width: 150, fit: BoxFit.cover,))),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Text("5 min read"),))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: getScreenSize(context).width*0.43,
                    child: Text(title,
                    maxLines: null,
                    // Justify text
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Urbanist'
                    ),
                    
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,left:20),
                    child: Text("by $authorName",
                    style: TextStyle(fontFamily: 'Poppins'),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(postDate)
            ],
          )
        ],
      ),
    ),
  ),
);