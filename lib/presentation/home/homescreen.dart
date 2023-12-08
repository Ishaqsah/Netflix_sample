import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constand.dart';
import 'package:netflixapp/presentation/home/widgets/number_list_tile.dart';
import 'package:netflixapp/presentation/widgets/icons/iconTextColm.dart';
import 'package:netflixapp/presentation/widgets/main_list_tile.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: scrollnotifier,
              builder: (context, index, _) {
                return NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection direction = notification.direction;
                    if (direction == ScrollDirection.reverse) {
                      scrollnotifier.value = false;
                    } else if (direction == ScrollDirection.forward) {
                      scrollnotifier.value = true;
                    }

                    return true;
                  },
                  child: Stack(
                    children: [
                      ListView(
                        children: [
                          HomebannnerImage(context),
                          hight10,
                          const mainListTiles(
                            title: 'Released in Past Years',
                          ),
                          hight10,
                          const mainListTiles(title: 'Trending Now'),
                          hight10,

                          /// numberlist
                          const Numberlisttile(),
                          hight10,
                          const mainListTiles(title: 'Tense Dramas'),
                          hight10,
                          const mainListTiles(title: 'South Indian Cinemas'),
                          hight10,
                        ],
                      ),
                      scrollnotifier.value == true
                          ? AnimatedContainer(
                              duration: Duration(milliseconds: 1000),
                              padding: EdgeInsets.all(5),
                              height: 100,
                              width: double.infinity,
                              color: Colors.black.withOpacity(0.4),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        'https://www.freepnglogos.com/uploads/netflix-logo-app-png-16.png',
                                        height: 50,
                                        width: 50,
                                      ),
                                      const Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.cast,
                                            color: Colors.white,
                                            size: 30,
                                          )),
                                      width10,
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        height: 30,
                                        width: 30,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                  hight10,
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Tv shows', style: khometilestyle),
                                      Text(
                                        'Movies',
                                        style: khometilestyle,
                                      ),
                                      Text(
                                        'Categories',
                                        style: khometilestyle,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          : hight10
                    ],
                  ),
                );
              })),
    );
  }

  Stack HomebannnerImage(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height - 200,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(mainImageURL), fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CustomIconButtons(
                  icon: Icons.add,
                  text: "My List",
                ),
                _playbutton(),
                const CustomIconButtons(icon: Icons.info, text: 'Info')
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _playbutton() {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: () {},
        icon: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(
            Icons.play_arrow,
            size: 35,
            color: Kblackcolor,
          ),
        ),
        label: const Padding(
          padding: EdgeInsets.only(right: 5),
          child: Text(
            'Play',
            style: TextStyle(color: Kblackcolor, fontSize: 20),
          ),
        ));
  }
}
