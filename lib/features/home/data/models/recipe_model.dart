import 'package:my_project/features/home/domain/entities/recipe.dart';

class RecipeModel extends Recipe {
  const RecipeModel({
    required String imagePath,
    required String title,
    String? creator,
    required String time,
    String? calories,
  }) : super(
          imagePath: imagePath,
          title: title,
          creator: creator,
          time: time,
          calories: calories,
        );

  factory RecipeModel.fromEntity(Recipe recipe) {
    return RecipeModel(
      imagePath: recipe.imagePath,
      title: recipe.title,
      creator: recipe.creator,
      time: recipe.time,
      calories: recipe.calories,
    );
  }

  Recipe toEntity() {
    return Recipe(
      imagePath: imagePath,
      title: title,
      creator: creator,
      time: time,
      calories: calories,
    );
  }
}
