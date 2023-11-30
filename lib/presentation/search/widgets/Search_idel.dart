import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/constand.dart';
import 'package:netflixapp/presentation/search/widgets/title.dart';

const imageurl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/oT81JufYbkP9BkFZm32VwvXRBOc.jpg';

class SearchIdlewidget extends StatelessWidget {
  const SearchIdlewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const  SearchTitle(title: 'Top Searches',),
        hight10,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => const TopSearchitemTile(),
            separatorBuilder: (ctx, index) => hight20,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}



class TopSearchitemTile extends StatelessWidget {
  const TopSearchitemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 70,
          width: screenwidth * 0.35,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageurl), fit: BoxFit.cover)),
        ),
        width10,
        Expanded(
          child: Text(
            'Movie name',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.play_circle_filled_outlined , size: 30,),
        )
      ],
    );
  }
}
