import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(

          color: Colors.accents[index % Colors.accents.length],
        ),

         Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// left side
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: Center(child: Icon(Icons.volume_off , size: 30, color: Kwhitecolor,))),

                  // right side

                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(),
                       videoActionWidget(icons: Icons.emoji_emotions, title: 'LOL'),
                        videoActionWidget(icons: Icons.add, title: 'My list'),
                         videoActionWidget(icons: Icons.share, title: 'Share'),
                          videoActionWidget(icons: Icons.play_circle_filled, title: 'Play'),
                    ],
                  )
              ],
            ),
          ))
      ],
    );
  }
}


class videoActionWidget extends StatelessWidget {
  const videoActionWidget({super.key, required this.icons, required this.title});

  final IconData icons;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
      child: Column(children: [
        
        Icon(icons, size: 30,),
        Text(title , style: TextStyle(fontSize: 16),),
    
      ],),
    );
  }
}