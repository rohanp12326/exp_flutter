import 'package:flutter/material.dart';
import 'package:my_project/core/constants/app_colors.dart';
import 'package:my_project/core/constants/app_dimensions.dart';
import 'package:my_project/core/constants/app_images.dart';
import 'package:my_project/core/utils/size_extensions.dart';
import 'package:my_project/modules/home/models/recipe.dart';

class FeaturedCard extends StatelessWidget {
  final Recipe recipe;
  const FeaturedCard({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    return GestureDetector(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(AppDimensions.radius),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.radius),
            child: Stack(
              children: [
                Image.asset(
                  recipe.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(AppDimensions.medium),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recipe.title,
                        style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: height * 0.015,
                            backgroundImage:
                                const AssetImage(AppImages.userImage1),
                          ),
                          const SizedBox(width: AppDimensions.small),
                          Text(
                            recipe.creator,
                            style: TextStyle(
                              fontSize: height * 0.015,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            recipe.time,
                            style: TextStyle(
                              fontSize: height * 0.015,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
