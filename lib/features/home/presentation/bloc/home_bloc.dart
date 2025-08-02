import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/core/usecases/no_params.dart';
import 'package:my_project/features/home/domain/usecases/get_featured_recipes_usecase.dart';
import 'package:my_project/features/home/domain/usecases/get_popular_recipes_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetFeaturedRecipesUseCase getFeaturedRecipes;
  final GetPopularRecipesUseCase getPopularRecipes;

  HomeBloc({
    required this.getFeaturedRecipes,
    required this.getPopularRecipes,
  }) : super(const HomeState()) {
    on<HomeStarted>(_onStarted);
    on<CategorySelected>(_onCategorySelected);
  }

  Future<void> _onStarted(HomeStarted event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      final featured = await getFeaturedRecipes.call(NoParams());
      final popular = await getPopularRecipes.call(state.selectedCategory);
      emit(state.copyWith(
        status: HomeStatus.success,
        featuredRecipes: featured,
        popularRecipes: popular,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onCategorySelected(
      CategorySelected event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      status: HomeStatus.loading,
      selectedCategory: event.category,
    ));
    try {
      final popular = await getPopularRecipes.call(event.category);
      emit(state.copyWith(
        status: HomeStatus.success,
        popularRecipes: popular,
        selectedCategory: event.category,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
