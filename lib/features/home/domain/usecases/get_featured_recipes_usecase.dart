import 'package:my_project/core/usecases/no_params.dart';
import 'package:my_project/core/usecases/usecase.dart';
import 'package:my_project/features/home/domain/entities/recipe.dart';
import 'package:my_project/features/home/domain/repositories/recipe_repository.dart';

class GetFeaturedRecipesUseCase implements UseCase<List<Recipe>, NoParams> {
  final RecipeRepository repository;

  GetFeaturedRecipesUseCase(this.repository);

  @override
  Future<List<Recipe>> call(NoParams params) async {
    return await repository.getFeaturedRecipes();
  }
}
