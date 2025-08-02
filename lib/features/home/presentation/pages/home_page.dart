import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/core/config/responsive_config.dart';
import 'package:my_project/features/home/presentation/bloc/home_bloc.dart';
import 'package:my_project/features/home/presentation/bloc/home_event.dart';
import 'package:my_project/features/home/presentation/bloc/home_state.dart';
import 'package:my_project/features/home/presentation/widgets/category_section.dart';
import 'package:my_project/features/home/presentation/widgets/custom_header.dart';
import 'package:my_project/features/home/presentation/widgets/featured_section.dart';
import 'package:my_project/features/home/presentation/widgets/popular_recipes_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        switch (state.status) {
          case HomeStatus.loading:
            return const Center(child: CircularProgressIndicator());
          case HomeStatus.failure:
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.errorMessage ?? 'Unexpected Error'),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<HomeBloc>().add(const HomeStarted()),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          case HomeStatus.success:
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: context.responsive.screenHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomHeader(),
                    const SizedBox(height: 16),
                    FeaturedSection(recipes: state.featuredRecipes),
                    const SizedBox(height: 16),
                    CategorySection(
                      selectedCategory: state.selectedCategory,
                      onCategorySelected: (category) =>
                          context.read<HomeBloc>().add(CategorySelected(category)),
                    ),
                    const SizedBox(height: 16),
                    PopularRecipesSection(recipes: state.popularRecipes),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            );
          case HomeStatus.initial:
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
