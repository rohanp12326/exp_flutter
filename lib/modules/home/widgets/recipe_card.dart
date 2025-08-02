import 'package:flutter/material.dart';
import 'package:my_project/core/constants/app_colors.dart';
import 'package:my_project/core/constants/app_dimensions.dart';
import 'package:my_project/core/constants/app_images.dart';
import 'package:my_project/core/utils/size_extensions.dart';
import 'package:my_project/modules/home/models/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  const RecipeCard({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    return GestureDetector(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.onPrimary,
            borderRadius: BorderRadius.circular(AppDimensions.radius),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow,
                offset: const Offset(0, 2),
                blurRadius: AppDimensions.large,
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
                          top: Radius.circular(AppDimensions.radius)),
                      child: Image.asset(
                        recipe.imagePath,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: AppDimensions.small,
                      right: AppDimensions.small,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          AppImages.favourite,
                          height: height * 0.03,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.small),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recipe.title,
                        style: TextStyle(
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
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
                                AppImages.calories,
                                height: height * 0.02,
                              ),
                              const SizedBox(
                                  width: AppDimensions.small / 2),
                              Text(
                                recipe.calories,
                                style: TextStyle(
                                  fontSize: height * 0.015,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                AppImages.proteins,
                                height: height * 0.02,
                              ),
                              const SizedBox(
                                  width: AppDimensions.small / 2),
                              Text(
                                recipe.time,
                                style: TextStyle(
                                  fontSize: height * 0.015,
                                  color: AppColors.textSecondary,
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
