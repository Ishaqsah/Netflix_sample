import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/widgets/mainCard.dart';
import 'package:netflixapp/presentation/widgets/main_title.dart';

class mainListTiles extends StatelessWidget {
  const mainListTiles({
    super.key, required this.title,
  });
   final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
     MainTitle(title: title),
    LimitedBox(
      maxHeight: 200,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: List.generate(10, (index) =>const MainImageCard()),
      ),
    )
        ],
      );
  }
}