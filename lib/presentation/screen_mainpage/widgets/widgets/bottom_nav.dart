import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';



ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class BottomnavigationWidget extends StatelessWidget {
  const BottomnavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchangenotifier,
      builder:(context, newindex, _) {
        
        return BottomNavigationBar(
            currentIndex: newindex,
            onTap: (index) {
              indexchangenotifier.value = index;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            unselectedIconTheme:const IconThemeData(
              color: Colors.grey,
            ),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.collections,
                  ),
                  label: 'New and hot'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.emoji_emotions,
                  ),
                  label: 'Fast laugh'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.download,
                  ),
                  label: 'Downloads'),
            ]);
      }
    );
  }
}
