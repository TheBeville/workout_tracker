import 'package:flutter/material.dart';
import '../model/exercise.dart';
import 'package:workout_tracker/temp_exercise_database.dart';

class AddExercise extends StatefulWidget {
  const AddExercise({Key? key}) : super(key: key);

  @override
  State<AddExercise> createState() => _AddExerciseState();
}

class _AddExerciseState extends State<AddExercise> {
  ExerciseType? chosenExerciseType;

  late int numberOfSets;
  late int numberOfReps;

  void _submit() {
    Navigator.of(context).pop(
      Exercise(
        type: chosenExerciseType!,
        // numberOfReps: numberOfReps,
      ),
    );
  }

  // populate Dropdown button with list of ExerciseTypes
  DropdownMenuItem<ExerciseType> _buildExerciseMenuItem(ExerciseType type) =>
      DropdownMenuItem(
        value: type,
        child: Text(type.id),
      );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Choose Exercise'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // user selects exercise
          DropdownButton<ExerciseType>(
            value: chosenExerciseType,
            hint: const Text('Select Exercise'),
            // use list of ExerciseTypes from temp_exercise_database
            items: providedExercises
                .map<DropdownMenuItem<ExerciseType>>(_buildExerciseMenuItem)
                .toList(),
            onChanged: (ExerciseType? value) {
              setState(
                () {
                  chosenExerciseType = value;
                },
              );
            },
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     // user enters number of sets
          //     SizedBox(
          //       width: MediaQuery.of(context).size.width * 0.2,
          //       child: TextFormField(
          //         keyboardType: TextInputType.number,
          //         decoration: const InputDecoration(
          //           border: UnderlineInputBorder(),
          //           labelText: 'Sets',
          //         ),
          //         onChanged: (value) {
          //           numberOfSets = int.parse(value);
          //         },
          //       ),
          //     ),
          //     // user enters number of reps
          //     SizedBox(
          //       width: MediaQuery.of(context).size.width * 0.2,
          //       child: TextFormField(
          //         keyboardType: TextInputType.number,
          //         decoration: const InputDecoration(
          //           border: UnderlineInputBorder(),
          //           labelText: 'Reps',
          //         ),
          //         onChanged: (value) {
          //           numberOfReps = int.parse(value);
          //         },
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop(null);
          },
        ),
        TextButton(
          onPressed: chosenExerciseType == null ? null : _submit,
          child: const Text('Done'),
        ),
      ],
    );
  }
}
