import 'package:flutter/material.dart';



Widget AuthorInformation({required String author_name, required String image_url}) {

  
  return Container(
    margin: EdgeInsets.only(top: 20,bottom: 10),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30,right: 20),
          child: ClipRRect(
            
            child: Image.network(image_url,width: 42, height: 42,),
            borderRadius: BorderRadius.circular(12),
            ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(author_name,style: TextStyle(fontFamily: 'Urbanist',fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(45, 67, 121, 1),)),
            Text("2 min ago",style:     TextStyle(fontFamily: 'Poppins', color: Color.fromRGBO(123, 139, 178, 1),fontWeight: FontWeight.w900,fontSize: 12
            
            ))
          ],
        )
  
      ],
    ),
  );
}