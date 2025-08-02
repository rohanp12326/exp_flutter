class Recipe {
  final String imagePath;
  final String title;
  final String creator;
  final String time;
  final String calories;

  const Recipe({
    required this.imagePath,
    required this.title,
    this.creator = '',
    this.time = '',
    this.calories = '',
  });
}
