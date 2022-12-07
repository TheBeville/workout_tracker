import 'package:flutter/material.dart';
import '../widget/bottom_nav_bar_view.dart';
import '../model/exercise.dart';
import '../widget/add_exercise.dart';

class CreateWorkoutView extends StatefulWidget {
  const CreateWorkoutView({super.key});

  @override
  State<CreateWorkoutView> createState() => _CreateWorkoutViewState();
}

class _CreateWorkoutViewState extends State<CreateWorkoutView> {
  void _userSelectExercise() async {
    Exercise? selectedExercise = await showDialog(
      context: context,
      builder: (BuildContext context) => const AddExercise(),
    );
    // controller.addExercise(exerciseTileCreationData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Workout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Create a workout or plan'),
            TextButton(
              onPressed: _userSelectExercise,
              child: const Text('Add'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 1,
      ),
    );
  }
}
