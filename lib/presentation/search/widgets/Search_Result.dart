import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/search/search_bloc.dart';
import 'package:netflixapp/core/Url%20&%20Strings/url_strings.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constand.dart';
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
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              children: List.generate(20, (index) {
                final movie = state.searchresultlist[index];
               return MainCard(
                 imageurl:'$imageUpendUrl${movie.posterPath}' ?? 'error'
               );
              } ),
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: NetworkImage(imageurl), fit: BoxFit.cover)),
    );
  }
}
