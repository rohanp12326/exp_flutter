import 'package:equatable/equatable.dart';
import 'package:my_project/features/home/domain/entities/recipe.dart';

enum HomeStatus { initial, loading, success, failure }

class HomeState extends Equatable {
  final HomeStatus status;
  final List<Recipe> featuredRecipes;
  final List<Recipe> popularRecipes;
  final String selectedCategory;
  final String? errorMessage;

  const HomeState({
    this.status = HomeStatus.initial,
    this.featuredRecipes = const [],
    this.popularRecipes = const [],
    this.selectedCategory = 'Breakfast',
    this.errorMessage,
  });

  HomeState copyWith({
    HomeStatus? status,
    List<Recipe>? featuredRecipes,
    List<Recipe>? popularRecipes,
    String? selectedCategory,
    String? errorMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      featuredRecipes: featuredRecipes ?? this.featuredRecipes,
      popularRecipes: popularRecipes ?? this.popularRecipes,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        featuredRecipes,
        popularRecipes,
        selectedCategory,
        errorMessage,
      ];
}
