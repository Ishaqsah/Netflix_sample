import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/presentation/screen_mainpage/widgets/Screen_Main.dart';


void main() {
  runApp(const MyApp());
}

  

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
