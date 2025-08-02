import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constants/app_colors.dart';
import 'package:my_project/core/constants/app_dimensions.dart';
import 'package:my_project/core/constants/app_strings.dart';
import 'package:my_project/core/utils/size_extensions.dart';
import 'package:my_project/modules/home/controllers/home_controller.dart';
import 'package:my_project/modules/home/widgets/featured_card.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    final height = context.screenHeight;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.featured,
            style: TextStyle(
              fontSize: height * 0.022,
              fontWeight: FontWeight.w800,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: AppDimensions.small),
          SizedBox(
            height: height * 0.25,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: controller.featuredRecipes.length,
              separatorBuilder: (_, __) =>
                  const SizedBox(width: AppDimensions.medium),
              itemBuilder: (context, index) {
                final recipe = controller.featuredRecipes[index];
                return FeaturedCard(recipe: recipe);
              },
            ),
          ),
        ],
      ),
    );
  }
}
