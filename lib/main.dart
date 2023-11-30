import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/presentation/screen_mainpage/widgets/Screen_Main.dart';


void main() {
  runApp(const MyApp());
}
 final String apitoken = 'c968f0908e165f5da4969f08e5900e6e';
  final readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjOTY4ZjA5MDhlMTY1ZjVkYTQ5NjlmMDhlNTkwMGU2ZSIsInN1YiI6IjY0Yzc1NzU1NjNlNmZiMDBjNDA5ZDM3NSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.I_UJnROO0ypvRvl7uyBKUhhgd_aVkgDYlRD6OCd3ISI';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Kwhitecolor
        ),
       scaffoldBackgroundColor: backgroundcolors,
       textTheme:const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white)
        
       )
      ),
     
   
      
      home: ScreenMain()
    );
  }
}
