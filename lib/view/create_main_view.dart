import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workout_tracker/view/create_workout_view.dart';
import '../widget/bottom_nav_bar.dart';

class MainCreateView extends StatefulWidget {
  const MainCreateView({super.key});

  @override
  State<MainCreateView> createState() => _MainCreateViewState();
}

class _MainCreateViewState extends State<MainCreateView> {
  CreateWorkoutView? createWorkoutView() {
    context.go('/create/workout');
  }

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
              children: [
                ElevatedButton(
                  onPressed: createWorkoutView,
                  child: const Text('Create'),
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('Edit'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(selectedIndex: 1),
    );
  }
}
