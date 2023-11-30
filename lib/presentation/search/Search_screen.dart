import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/colors/constand.dart';
import 'package:netflixapp/presentation/search/widgets/Search_Result.dart';
import 'package:netflixapp/presentation/search/widgets/Search_idel.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoSearchTextField(
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.grey.withOpacity(0.2),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Kgreycolor,
              ),
              suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                  color: Kgreycolor),
              style: const TextStyle(color: Colors.white),
            ),
          ),
         Expanded(child: const SearchIdlewidget()),
          Expanded(child: const SearchResultwidget()),
        ],
      )),
    );
  }
}
