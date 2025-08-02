import 'package:get/get.dart';
import 'package:my_project/core/constants/app_images.dart';
import 'package:my_project/core/constants/app_strings.dart';
import 'package:my_project/modules/home/models/recipe.dart';

class HomeController extends GetxController {
  final RxString selectedCategory = AppStrings.breakfast.obs;
  final RxInt currentIndex = 0.obs;

  final List<Recipe> featuredRecipes = const [
    Recipe(
      imagePath: AppImages.featured1,
      title: AppStrings.titleAsianWhiteNoodle,
      creator: AppStrings.creatorJamesSpader,
      time: AppStrings.time20Min,
    ),
    Recipe(
      imagePath: AppImages.featured2,
      title: AppStrings.titleHealthyTacoSalad,
      creator: AppStrings.creatorOliviaRizka,
      time: AppStrings.time15Min,
    ),
  ];

  final Map<String, List<Recipe>> popularRecipes = const {
    AppStrings.breakfast: [
      Recipe(
        imagePath: AppImages.popular1,
        title: AppStrings.titleHealthyTacoSalad,
        calories: AppStrings.calories120,
        time: AppStrings.time20Min,
      ),
      Recipe(
        imagePath: AppImages.popular2,
        title: AppStrings.titleJapaneseStylePancakes,
        calories: AppStrings.calories64,
        time: AppStrings.time12Min,
      ),
    ],
    AppStrings.lunch: [
      Recipe(
        imagePath: AppImages.popular3,
        title: AppStrings.titleGrilledChickenSalad,
        calories: AppStrings.calories200,
        time: AppStrings.time25Min,
      ),
      Recipe(
        imagePath: AppImages.popular4,
        title: AppStrings.titlePastaPrimavera,
        calories: AppStrings.calories350,
        time: AppStrings.time30Min,
      ),
    ],
    AppStrings.dinner: [
      Recipe(
        imagePath: AppImages.popular1,
        title: AppStrings.titleSteakVegetables,
        calories: AppStrings.calories500,
        time: AppStrings.time40Min,
      ),
      Recipe(
        imagePath: AppImages.popular2,
        title: AppStrings.titleSeafoodPaella,
        calories: AppStrings.calories600,
        time: AppStrings.time50Min,
      ),
    ],
  };

  void onCategorySelected(String category) {
    selectedCategory.value = category;
  }

  void onTabSelected(int index) {
    currentIndex.value = index;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
