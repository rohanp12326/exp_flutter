import 'package:my_project/features/home/data/data_sources/recipe_local_data_source.dart';
import 'package:my_project/features/home/domain/entities/recipe.dart';
import 'package:my_project/features/home/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeLocalDataSource localDataSource;

  RecipeRepositoryImpl({required this.localDataSource});

  @override
  Future<List<Recipe>> getFeaturedRecipes() async {
    try {
      final models = await localDataSource.getFeaturedRecipes();
      return models.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to load featured recipes');
    }
  }

  @override
  Future<List<Recipe>> getPopularRecipes(String category) async {
    try {
      final models = await localDataSource.getPopularRecipes(category);
      return models.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to load popular recipes');
    }
  }
}
