import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/constand.dart';
import 'package:netflixapp/presentation/search/widgets/title.dart';

class SearchResultwidget extends StatelessWidget {
  const SearchResultwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(
          title: 'Movies & TV',
        ),
        hight10,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/1.4,
          children: List.generate(20, (index) => const MainCard()),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w220_and_h330_face/pD6sL4vntUOXHmuvJPPZAgvyfd9.jpg'),
              fit: BoxFit.cover)),
    );
  }
}
