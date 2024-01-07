import 'package:flutter/material.dart';
import 'package:netflixapp/core/constand.dart';

class MainImageCard extends StatelessWidget {
  const MainImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 5),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: borderRadious5,
          image: const DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/19133309/pexels-photo-19133309/free-photo-of-young-woman-in-a-hijab-walking-in-front-of-a-monumental-building.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              fit: BoxFit.cover)),
    );
  }
}
