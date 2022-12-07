import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatefulWidget {
  int selectedIndex;

  BottomNavBar({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // TODO: Ask Alex how to use selectedIndex down here when declared higher up. Should BottomNavBar be stateful?

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'home',
      'create',
      'workout',
      'progress',
      'profile',
    ];

    void bottomNavBarSelect(int index) {
      context.go('/${items[index]}');
      setState(() {
        // selectedIndex = index;
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.create),
          label: 'Create',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Workout',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up),
          label: 'Progress',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      // currentIndex: selectedIndex,
      showUnselectedLabels: true,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.white,
      onTap: bottomNavBarSelect,
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
