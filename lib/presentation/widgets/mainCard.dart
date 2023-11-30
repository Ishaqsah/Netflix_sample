import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/constand.dart';

class MainImageCard extends StatelessWidget {
  const MainImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10 , left: 5),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: borderRadious5,
        image:const DecorationImage(image: NetworkImage('https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hTP1DtLGFamjfu8WqjnuQdP1n4i.jpg') , fit: BoxFit.cover)
      ),
    );
  }
}