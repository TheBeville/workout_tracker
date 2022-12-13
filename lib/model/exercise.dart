class Exercise {
  final ExerciseType type;
  final List<ExerciseSet> sets;

  const Exercise({
    required this.type,
    this.sets = const [],
  });
}

class ExerciseSet {
  final int? reps;
  final double? weight;
  final double? distance;
  final int? duration;

  const ExerciseSet({
    this.reps,
    this.weight,
    this.distance,
    this.duration,
  });
}

class ExerciseType {
  final String id;
  final bool hasReps;
  final bool hasWeight;
  final bool hasDistance;
  final bool hasDuration;

  const ExerciseType({
    required this.id,
    this.hasReps = false,
    this.hasWeight = false,
    this.hasDistance = false,
    this.hasDuration = false,
  });
}

class Workout {
  final List<Exercise> exercises;
  const Workout({required this.exercises});
}

class WorkoutSession {
  final Workout? plan;
  final Workout results;
  final int timestamp;

  const WorkoutSession({
    required this.plan,
    required this.results,
    required this.timestamp,
  });
}

class ExerciseTypeMetadata {
  final String id;
  final String name;
  // final String description;
  // final String imageUrl;

  const ExerciseTypeMetadata({
    required this.id,
    required this.name,
    // required this.description,
    // required this.imageUrl,
  });
}
