import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/colors/constand.dart';
import 'package:netflixapp/presentation/widgets/icons/iconTextColm.dart';

class ComingsoonTab extends StatelessWidget {
  const ComingsoonTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        hight10,
        ComingSoonWidget(),
        ComingSoonWidget(),
      ],
    );
  }
}

///
///coming soon widgets
class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: size.height - 330,
          width: 50,
          child: const Column(
            children: [
              Text(
                'FEB',
                style: TextStyle(fontSize: 20, color: Colors.white60),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 330,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              hight20,
              const Row(
                children: [
                  Text(
                    'TALLGIRL2',
                    style: TextStyle(
                        fontSize: 45,
                        letterSpacing: -5,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconButtons(
                        icon: Icons.notifications,
                        text: 'Remind me',
                        fontsize: 12,
                        iconsize: 25,
                      ),
                      width20,
                      CustomIconButtons(
                        icon: Icons.info,
                        text: 'Info',
                        fontsize: 12,
                        iconsize: 25,
                      ),
                      width20
                    ],
                  )
                ],
              ),
              hight10,
              Text(
                'Coming on Friday',
                style: normaltext(16),
              ),
              hight20,
              Text(
                "Tall girl 2",
                style: boldtext(20),
              ),
              hight10,
              Flexible(
                  child: Text(
                'Jodi, the tallest girl in her high school, has always felt uncomfortable in her own skin. But after years of slouching, being made fun of, and avoiding attention at all costs, Jodi finally decides to find the confidence to stand tall.',
                style: colortext(16, Kgreycolor),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
