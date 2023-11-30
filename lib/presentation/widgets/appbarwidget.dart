import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixapp/core/colors/constand.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Text(title,
              style: GoogleFonts.montserrat(
                  fontSize: 30, fontWeight: FontWeight.bold)),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              )),
          width20,
          Container(
            height: 30,
            width: 30,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
