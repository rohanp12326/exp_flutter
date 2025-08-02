import 'package:my_project/features/home/data/models/recipe_model.dart';

class RecipeLocalDataSource {
  Future<List<RecipeModel>> getFeaturedRecipes() async {
    return [
      const RecipeModel(
        imagePath: 'assets/images/featured_card_1.png',
        title: 'Asian white noodle with extra seafood',
        creator: 'James Spader',
        time: '20 Min',
        calories: null,
      ),
      const RecipeModel(
        imagePath: 'assets/images/featured_card_2.png',
        title: 'Healthy Taco Salad with fresh vegetable',
        creator: 'Olivia Rizka',
        time: '15 Min',
        calories: null,
      ),
    ];
  }

  Future<List<RecipeModel>> getPopularRecipes(String category) async {
    switch (category) {
      case 'Breakfast':
        return [
          const RecipeModel(
            imagePath: 'assets/images/popular_recipe1.png',
            title: 'Healthy Taco Salad with fresh vegetable',
            creator: null,
            time: '20 Min',
            calories: '120 Kcal',
          ),
          const RecipeModel(
            imagePath: 'assets/images/popular_recipe2.png',
            title: 'Japanese-style Pancakes Recipe',
            creator: null,
            time: '12 Min',
            calories: '64 Kcal',
          ),
        ];
      case 'Lunch':
        return [
          const RecipeModel(
            imagePath: 'assets/images/popular_recipe3.png',
            title: 'Grilled Chicken Salad',
            creator: null,
            time: '25 Min',
            calories: '200 Kcal',
          ),
          const RecipeModel(
            imagePath: 'assets/images/popular_recipe4.png',
            title: 'Pasta Primavera',
            creator: null,
            time: '30 Min',
            calories: '350 Kcal',
          ),
        ];
      case 'Dinner':
        return [
          const RecipeModel(
            imagePath: 'assets/images/popular_recipe1.png',
            title: 'Steak with Vegetables',
            creator: null,
            time: '40 Min',
            calories: '500 Kcal',
          ),
          const RecipeModel(
            imagePath: 'assets/images/popular_recipe2.png',
            title: 'Seafood Paella',
            creator: null,
            time: '50 Min',
            calories: '600 Kcal',
          ),
        ];
      default:
        return [];
    }
  }
}
