import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/colors/constand.dart';
import 'package:netflixapp/presentation/widgets/icons/iconTextColm.dart';

class EveronesWatchings extends StatelessWidget {
  const EveronesWatchings({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder
    
    (
      itemCount: 5,
      itemBuilder: (context , index)=>EveryonesWidget(),  )  ;   
  }
}





class EveryonesWidget extends StatelessWidget {
  const EveryonesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' Friends',
          style: boldtext(25),
        ),
        hight10,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Flexible(
              child: Text(
            'Jodi, the tallest girl in her high school, has always felt uncomfortable in her own skin. But after years of slouching, being made fun of, and avoiding attention at all costs, Jodi finally decides to find the confidence to stand tall.',
            style: colortext(16, Kgreycolor),
          )),
        ),
        hight30,
        Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/628Dep6AxEtDxjZoGP78TsOxYbK.jpg'),
                      fit: BoxFit.cover)),
            ),
            const Align(
                heightFactor: 6,
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.volume_off,
                  size: 30,
                  color: Kwhitecolor,
                )),
          ],
        ),
        hight30,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomIconButtons(icon: Icons.share, text: "Share"),
    
            width20,
            CustomIconButtons(icon: Icons.add, text: "My List"),
            width20,
            CustomIconButtons(icon: Icons.play_arrow, text: "Play"),
            width20,
          ],
        ),

        hight30
      ],
    );
  }
}
