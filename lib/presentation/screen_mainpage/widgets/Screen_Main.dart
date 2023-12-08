import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/downloads/widgets/download_screen.dart';
import 'package:netflixapp/presentation/fast_laugh/fast_laugh_screen.dart';
import 'package:netflixapp/presentation/home/homescreen.dart';
import 'package:netflixapp/presentation/new%20and%20hot/new&hot_screen.dart';
import 'package:netflixapp/presentation/screen_mainpage/widgets/widgets/bottom_nav.dart';
import 'package:netflixapp/presentation/search/Search_screen.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});

  final _pages = [
    Homescreen(),
    NewandHotScreen(),
    FastlaughScreen(),
    SearchScreen(),
    DownloadsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexchangenotifier,
          builder: (context, index, _) {
            return _pages[index];
          }),
      bottomNavigationBar: BottomnavigationWidget(),
    );
  }
}
