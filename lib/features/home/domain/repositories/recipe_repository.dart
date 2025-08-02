import 'package:my_project/features/home/domain/entities/recipe.dart';

abstract class RecipeRepository {
  Future<List<Recipe>> getFeaturedRecipes();
  Future<List<Recipe>> getPopularRecipes(String category);
}
