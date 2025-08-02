import 'package:flutter/material.dart';
import 'package:my_project/features/home/domain/entities/recipe.dart';
import 'package:my_project/core/config/responsive_config.dart';
import 'package:my_project/core/constants/color_palette.dart';
import 'recipe_card.dart';

class PopularRecipesSection extends StatelessWidget {
  final List<Recipe> recipes;

  const PopularRecipesSection({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    final resp = context.responsive;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: resp.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Recipes',
                style: TextStyle(
                  fontSize: resp.titleFontSize,
                  fontWeight: FontWeight.w800,
                  color: ColorPalette.textPrimary,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontSize: resp.subtitleFontSize * 0.75,
                    fontWeight: FontWeight.w800,
                    color: ColorPalette.secondary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: resp.gutter / 2),
          SizedBox(
            height: resp.popularHeight,
            child: Scrollbar(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: recipes.length,
                separatorBuilder: (_, __) => SizedBox(width: resp.gutter),
                itemBuilder: (context, index) {
                  return RecipeCard(recipe: recipes[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
