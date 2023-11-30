import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/fast_laugh/widget/video_list_item.dart';

class FastlaughScreen extends StatelessWidget {
  const FastlaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
            scrollDirection: Axis.vertical,
            children:
                List.generate(10, (index) => VideoListItem(index: index))),
      ),
    );
  }
}
