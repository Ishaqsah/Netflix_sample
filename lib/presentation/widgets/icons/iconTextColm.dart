import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';



/// colume icons and text 
class CustomIconButtons extends StatelessWidget {
  const CustomIconButtons({
    super.key,
    required this.icon,
    required this.text,  this.iconsize = 30,
  this.fontsize = 16,
  });

  final IconData icon;
  final String text;
  final double iconsize;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconsize,
          color: Kwhitecolor,
        ),
        Text(
          text,
          style:  TextStyle(fontSize: fontsize, color: Kwhitecolor),
        )
      ],
    );
  }
}
