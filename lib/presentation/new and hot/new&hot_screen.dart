import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constand.dart';
import 'package:netflixapp/presentation/new%20and%20hot/tab_screens/comingsoon.dart';
import 'package:netflixapp/presentation/new%20and%20hot/tab_screens/everyonesWatch.dart';
import 'package:netflixapp/presentation/widgets/appbarwidget.dart';

class NewandHotScreen extends StatelessWidget {
  const NewandHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Kblackcolor,
          title: Text(
            'Hot & New',
            style: GoogleFonts.montserrat(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.cast,
                      color: Colors.white,
                      size: 30,
                    )),
                width20,
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 30,
                  width: 30,
                  color: Colors.blue,
                )
              ],
            )
          ],
          bottom: TabBar(
              indicatorPadding:
                  const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              labelColor: Kblackcolor,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: Kwhitecolor,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              tabs: [
                Tab(
                  text: '🍿 Coming soon ',
                ),
                Tab(text: "👀 Everyone's Watching "),
              ]),
        ),
        body: SafeArea(
            child: TabBarView(
                children: [const ComingsoonTab(), const EveronesWatchings()])),
      ),
    );
  }
}

_tabbarView(String name) {
  return Center(child: Text(name));
}
