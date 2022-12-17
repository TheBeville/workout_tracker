import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;

  const BottomNavBar({super.key, required this.selectedIndex});

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
      currentIndex: selectedIndex,
      showUnselectedLabels: true,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.white,
      onTap: bottomNavBarSelect,
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
