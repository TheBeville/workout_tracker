import 'package:flutter/material.dart';
import '../widget/bottom_nav_bar.dart';

class MainCreateView extends StatefulWidget {
  const MainCreateView({super.key});

  @override
  State<MainCreateView> createState() => _MainCreateViewState();
}

class _MainCreateViewState extends State<MainCreateView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text('Create Plan?'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ElevatedButton(
                  onPressed: null,
                  child: Text('Create'),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Edit'),
                ),
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            const Text('Create Workout?'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ElevatedButton(
                  onPressed: null,
                  child: Text('Create'),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Edit'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 1,
      ),
    );
  }
}
