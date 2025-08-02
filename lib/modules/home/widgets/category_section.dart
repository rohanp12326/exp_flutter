import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constants/app_colors.dart';
import 'package:my_project/core/constants/app_dimensions.dart';
import 'package:my_project/core/constants/app_strings.dart';
import 'package:my_project/core/utils/size_extensions.dart';
import 'package:my_project/modules/home/controllers/home_controller.dart';
import 'package:my_project/modules/home/widgets/category_button.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    final height = context.screenHeight;
    return Obx(() {
      final selected = controller.selectedCategory.value;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimensions.medium),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.category,
                  style: TextStyle(
                    fontSize: height * 0.022,
                    fontWeight: FontWeight.w800,
                    color: AppColors.textPrimary,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    AppStrings.seeAll,
                    style: TextStyle(
                      fontSize: height * 0.015,
                      fontWeight: FontWeight.w800,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDimensions.small),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryButton(
                  label: AppStrings.breakfast,
                  isSelected: selected == AppStrings.breakfast,
                  onTap: () =>
                      controller.onCategorySelected(AppStrings.breakfast),
                ),
                CategoryButton(
                  label: AppStrings.lunch,
                  isSelected: selected == AppStrings.lunch,
                  onTap: () => controller.onCategorySelected(AppStrings.lunch),
                ),
                CategoryButton(
                  label: AppStrings.dinner,
                  isSelected: selected == AppStrings.dinner,
                  onTap: () =>
                      controller.onCategorySelected(AppStrings.dinner),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
