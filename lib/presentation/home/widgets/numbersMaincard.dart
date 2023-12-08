import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflixapp/core/constand.dart';

class NumberMainCard extends StatelessWidget {
  const NumberMainCard({
    super.key,
    required this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              margin: EdgeInsets.only(right: 10, left: 5),
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: borderRadious5,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vBZ0qvaRxqEhZwl6LWmruJqWE8Z.jpg'),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        Positioned(
          left: 10,
          top: 75,
          child: BorderedText(
              strokeWidth: 6,
              strokeColor: Colors.grey,
              child: Text(
                '${index + 1}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 130,
                    decoration: TextDecoration.none,
                    color: Colors.black),
              )),
        )
      ],
    );
  }
}
