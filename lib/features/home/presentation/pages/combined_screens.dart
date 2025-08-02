import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/core/usecases/no_params.dart';
import 'package:my_project/features/home/data/data_sources/recipe_local_data_source.dart';
import 'package:my_project/features/home/data/repositories/recipe_repository_impl.dart';
import 'package:my_project/features/home/domain/usecases/get_featured_recipes_usecase.dart';
import 'package:my_project/features/home/domain/usecases/get_popular_recipes_usecase.dart';
import 'package:my_project/features/home/presentation/bloc/home_bloc.dart';
import 'package:my_project/features/home/presentation/bloc/home_event.dart';
import 'package:my_project/features/home/presentation/pages/home_page.dart';
import 'package:my_project/features/home/presentation/widgets/custom_bottom_nav_bar.dart';
import 'package:my_project/features/home/presentation/widgets/custom_floating_button.dart';

class CombinedScreens extends StatefulWidget {
  const CombinedScreens({super.key});

  @override
  State<CombinedScreens> createState() => _CombinedScreensState();
}

class _CombinedScreensState extends State<CombinedScreens> {
  int _currentIndex = 0;
  late final HomeBloc _homeBloc;

  @override
  void initState() {
    super.initState();
    final repository = RecipeRepositoryImpl(
      localDataSource: RecipeLocalDataSource(),
    );
    _homeBloc = HomeBloc(
      getFeaturedRecipes: GetFeaturedRecipesUseCase(repository),
      getPopularRecipes: GetPopularRecipesUseCase(repository),
    );
    _homeBloc.add(const HomeStarted());
  }

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _homeBloc,
      child: Scaffold(
        body: const HomePage(),
        bottomNavigationBar: CustomBottomNavBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() => _currentIndex = index);
          },
        ),
        floatingActionButton: const CustomFloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
