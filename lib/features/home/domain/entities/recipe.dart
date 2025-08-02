import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  final String imagePath;
  final String title;
  final String? creator;
  final String time;
  final String? calories;

  const Recipe({
    required this.imagePath,
    required this.title,
    this.creator,
    required this.time,
    this.calories,
  });

  @override
  List<Object?> get props => [
        imagePath,
        title,
        creator,
        time,
        calories,
      ];
}
