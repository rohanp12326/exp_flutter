import 'package:flutter/material.dart';
import 'package:my_project/features/home/domain/entities/recipe.dart';
import 'package:my_project/core/config/responsive_config.dart';
import 'package:my_project/core/constants/color_palette.dart';
import 'package:my_project/core/constants/dimens.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    final resp = context.responsive;
    return GestureDetector(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppDimens.borderRadius),
            boxShadow: [
              BoxShadow(
                color: ColorPalette.navBarShadow,
                offset: const Offset(0, 2),
                blurRadius: AppDimens.bottomBarBlurRadius,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 6,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(AppDimens.borderRadius)),
                      child: Image.asset(
                        recipe.imagePath,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: resp.gutter / 4,
                      right: resp.gutter / 4,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/favourite_icon.png',
                          height: resp.subtitleFontSize * 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(resp.gutter / 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recipe.title,
                        style: TextStyle(
                          fontSize: resp.subtitleFontSize,
                          fontWeight: FontWeight.bold,
                          color: ColorPalette.textPrimary,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/calories_icon.png',
                                height: resp.subtitleFontSize * 1.2,
                              ),
                              SizedBox(width: resp.gutter / 4),
                              Text(
                                recipe.calories ?? '',
                                style: TextStyle(
                                  fontSize: resp.subtitleFontSize * 0.75,
                                  color: ColorPalette.textSecondary,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/proteins_icon.png',
                                height: resp.subtitleFontSize * 1.2,
                              ),
                              SizedBox(width: resp.gutter / 4),
                              Text(
                                recipe.time,
                                style: TextStyle(
                                  fontSize: resp.subtitleFontSize * 0.75,
                                  color: ColorPalette.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
