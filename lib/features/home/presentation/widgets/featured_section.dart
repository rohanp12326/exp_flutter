import 'package:flutter/material.dart';
import 'package:my_project/core/constants/color_palette.dart';
import 'package:my_project/features/home/domain/entities/recipe.dart';
import 'package:my_project/core/config/responsive_config.dart';
import 'featured_card.dart';

class FeaturedSection extends StatelessWidget {
  final List<Recipe> recipes;

  const FeaturedSection({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    final resp = context.responsive;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: resp.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured',
            style: TextStyle(
              fontSize: resp.titleFontSize,
              fontWeight: FontWeight.w800,
              color: ColorPalette.textPrimary,
            ),
          ),
          SizedBox(height: resp.gutter / 2),
          SizedBox(
            height: resp.featuredHeight,
            child: Scrollbar(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: recipes.length,
                separatorBuilder: (_, __) => SizedBox(width: resp.gutter),
                itemBuilder: (context, index) {
                  return FeaturedCard(recipe: recipes[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
