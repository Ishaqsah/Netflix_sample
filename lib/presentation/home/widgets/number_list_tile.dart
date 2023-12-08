import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/home/widgets/numbersMaincard.dart';
import 'package:netflixapp/presentation/widgets/main_title.dart';

class Numberlisttile extends StatelessWidget {
  const Numberlisttile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 Tv shows in India Today"),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: List.generate(
                10,
                (index) => NumberMainCard(
                      index: index,
                    )),
          ),
        )
      ],
    );
  }
}
