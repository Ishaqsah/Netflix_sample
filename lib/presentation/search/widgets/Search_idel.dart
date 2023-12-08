import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/search/search_bloc.dart';
import 'package:netflixapp/core/Url%20&%20Strings/url_strings.dart';
import 'package:netflixapp/core/constand.dart';
import 'package:netflixapp/presentation/search/widgets/title.dart';

// const imageurl =
//     'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/oT81JufYbkP9BkFZm32VwvXRBOc.jpg';

class SearchIdlewidget extends StatelessWidget {
  const SearchIdlewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(
          title: 'Top Searches',
        ),
        hight10,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isloading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.iserror) {
                return const Center(
                  child: Text("Error while geting data"),
                );
              } else if (state.ideallist.isEmpty) {
                return const Center(
                  child: Text("list is empty"),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx, index){
                  final movies = state.ideallist[index];
                  return TopSearchitemTile(imageurls: ("$imageUpendUrl${movies.backdroppath}" ), title: movies.title ?? "no title");

                },
                separatorBuilder: (ctx, index) => hight20,
                itemCount: state.ideallist.length,
              );
            },
          ),
        )
      ],
    );
  }
}


class TopSearchitemTile extends StatelessWidget {
  const TopSearchitemTile({super.key, required this.imageurls, required this.title});

final  String imageurls;
final  String title;


  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 70,
          width: screenwidth * 0.35,
          decoration:  BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageurls), fit: BoxFit.cover)),
        ),
        width10,
         Expanded(
          child: Text(
           title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.play_circle_filled_outlined,
            size: 30,
          ),
        )
      ],
    );
  }
}
