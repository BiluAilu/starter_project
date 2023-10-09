import 'package:flutter/material.dart';
import 'package:starter_project/core/utils/colors.dart';
import 'package:starter_project/core/utils/size.dart';
import 'package:starter_project/features/home/presentation/widgets/author_information.dart';
import 'package:starter_project/features/home/presentation/widgets/custom_button.dart';
import 'package:starter_project/features/home/presentation/widgets/custom_title.dart';

class ArticleDetail extends StatelessWidget {
  const ArticleDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: home_background,
      appBar: AppBar(
        backgroundColor: home_background,
        elevation: 0,
        leading:IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed:() =>Navigator.pop(context),) ,
      ),

      body: Container(
        margin: EdgeInsets.only( left:0,right: 0),

        child: Column(children: [
          CustomTitle("Four Things Everone needs to know"),
          AuthorInformation(author_name:"Author Name",image_url:"https://th.bing.com/th/id/R.a2cde4aa7d6eeca411764b7dc3b9eaa3?rik=jqYjWjazXSmIjQ&pid=ImgRaw&r=0"),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               ClipRRect(
                
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                child: Image.network("https://th.bing.com/th/id/R.a2cde4aa7d6eeca411764b7dc3b9eaa3?rik=jqYjWjazXSmIjQ&pid=ImgRaw&r=0",height: getScreenSize(context).height*0.3,fit: BoxFit.fitWidth,width: getScreenSize(context).width,)
                
                ,),
               
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
               width: getScreenSize(context).width*0.9,
               child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt consectetur adipiscing elit, sed do eiusmod tempor incididunt consectetur adipiscing elit, sed do eiusmod tempor incididunt  consectetur adipiscing elit, sed do eiusmod tempor incididunt  consectetur adipiscing elit, sed do eiusmod tempor incididunt',maxLines: null,
               
               
               style: TextStyle(color: Color.fromRGBO(45, 67, 121, 1),fontSize: 16),),
              )
             
             ], 
            ),
          )

        ],),
      ),
      
      floatingActionButton: CustomButton(icon: Icon(Icons.thumb_up_sharp), onPressed: (){}),
    );

  }
}


