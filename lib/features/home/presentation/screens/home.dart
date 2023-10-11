import 'package:flutter/material.dart';
import 'package:starter_project/core/utils/colors.dart';
import 'package:starter_project/features/home/presentation/bloc/article/article_bloc.dart';
import 'package:starter_project/features/home/presentation/widgets/article_card.dart';
import 'package:starter_project/features/home/presentation/widgets/custom_button.dart';
import 'package:starter_project/features/home/presentation/widgets/custom_title.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starter_project/injection_dependencies.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: home_background,
      body: BlocProvider<ArticleBloc>(
        create: (_) => sl<ArticleBloc>(),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Center(child: CustomTitle("Welcome Back!")),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Flexible(
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      elevation: 3,
                      child: TextField(
                        decoration: InputDecoration(

                            //  contentPadding: EdgeInsets.all(10.0),
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            hintText: 'Search articles',
                            hintStyle: TextStyle(color: hint_text_color),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: CustomButton(
                              icon: Icon(
                                Icons.search_rounded,
                                size: 30,
                              ),
                              onPressed: () {},
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return article_card(
                          context: context,
                          title: "Four Things Everone needs to know",
                          authorName: "Rechard Gervain",
                          postDate: "Jan 12 2023");
                    }))
          ]),
        ),
      ),
      floatingActionButton:
          CustomButton(icon: Icon(Icons.add), onPressed: () {}),
    );
  }
}
