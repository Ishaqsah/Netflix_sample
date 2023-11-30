import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/colors/constand.dart';
import 'package:netflixapp/presentation/widgets/appbarwidget.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetlist =  [
      const _smartDownloads(),
      const Section2(),
      const Section3(),
    ];

    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(
            title: 'Downloads',
          )),
      body: SafeArea(
          child: ListView.separated(
            padding: const EdgeInsets.all(10),
        itemBuilder: (ctx , index)=> widgetlist[index],
        separatorBuilder: (ctx,index)=> const SizedBox(height: 20,),
        itemCount: widgetlist.length,
      )),
    );
  }
}

class _smartDownloads extends StatelessWidget {
  const _smartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(Icons.settings),
        ),
        Text('Smart settings'),
      ],
    );
  }
}

class downloadsimageWidgets extends StatelessWidget {
  const downloadsimageWidgets({
    super.key,
    required this.imagelist,
    this.angle = 0,
    required this.margin,
    required this.size,
  });

  final double angle;
  final String imagelist;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          margin: margin,
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Kblackcolor,
              image: DecorationImage(
                  image: NetworkImage(
                    imagelist,
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final List imagelist = [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/2I8aMfUvgRKQvEpBIQVKMbXgMsi.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/pD6sL4vntUOXHmuvJPPZAgvyfd9.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg',
    ];

    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
         hight20,
        const Text(
          'Indroducing downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Kwhitecolor, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        hight20,
        const Text(
          "We'll download a personalised selection of\n movies and shows for you so there's\n  always somthing to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Kgreycolor,
            fontSize: 17,
          ),
        ),

        SizedBox(
          height: size.width,
          width: size.width,
  
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.32,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              downloadsimageWidgets(
                imagelist: imagelist[0],
                margin: EdgeInsets.only(left: 180, bottom: 15),
                angle: 15,
                size: Size(
                  size.width * 0.30,
                  size.width * 0.44,
                ),
              ),
              downloadsimageWidgets(
                imagelist: imagelist[1],
                margin: EdgeInsets.only(right: 180, bottom: 15),
                angle: -13,
                size: Size(
                  size.width * 0.30,
                  size.width * 0.44,
                ),
              ),
              downloadsimageWidgets(
                imagelist: imagelist[2],
                margin: EdgeInsets.only(),
                size: Size(
                  size.width * 0.33,
                  size.width * 0.48,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              color: Kbuttoncolorblue,
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Set up',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Kbuttoncolorwhite),
                ),
              ),
            ),
          ),
        ),
        hight10,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: Kbuttoncolorwhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Kblackcolor),
            ),
          ),
        )
      ],
    );
  }
}
