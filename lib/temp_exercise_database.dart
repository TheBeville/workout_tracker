import 'package:workout_tracker/model/exercise.dart';

const List<ExerciseType> providedExercises = [
  benchPress,
  bicepCurl,
  deadlift,
  overheadPress,
  pullups,
  tricepExtension,
];

const ExerciseType benchPress = ExerciseType(
  id: 'Bench Press',
  hasDistance: false,
  hasDuration: false,
  hasReps: true,
  hasWeight: true,
);

const ExerciseType bicepCurl = ExerciseType(
  id: 'Bicep Curl',
  hasDistance: false,
  hasDuration: false,
  hasReps: true,
  hasWeight: true,
);

const ExerciseType deadlift = ExerciseType(
  id: 'Deadlift',
  hasDistance: false,
  hasDuration: false,
  hasReps: true,
  hasWeight: true,
);

const ExerciseType overheadPress = ExerciseType(
  id: 'Overhead Press',
  hasDistance: false,
  hasDuration: false,
  hasReps: true,
  hasWeight: true,
);

const ExerciseType pullups = ExerciseType(
  id: 'Pullups',
  hasDistance: false,
  hasDuration: false,
  hasReps: true,
  hasWeight: true,
);

const ExerciseType tricepExtension = ExerciseType(
  id: 'Tricep Extension',
  hasDistance: false,
  hasDuration: false,
  hasReps: true,
  hasWeight: true,
);
