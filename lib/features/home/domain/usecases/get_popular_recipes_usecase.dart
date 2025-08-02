import 'package:my_project/core/usecases/usecase.dart';
import 'package:my_project/features/home/domain/entities/recipe.dart';
import 'package:my_project/features/home/domain/repositories/recipe_repository.dart';

class GetPopularRecipesUseCase implements UseCase<List<Recipe>, String> {
  final RecipeRepository repository;

  GetPopularRecipesUseCase(this.repository);

  @override
  Future<List<Recipe>> call(String category) async {
    return await repository.getPopularRecipes(category);
  }
}
