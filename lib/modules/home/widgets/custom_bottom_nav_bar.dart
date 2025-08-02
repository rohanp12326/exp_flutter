import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constants/app_colors.dart';
import 'package:my_project/core/constants/app_dimensions.dart';
import 'package:my_project/core/constants/app_images.dart';
import 'package:my_project/core/utils/size_extensions.dart';
import 'package:my_project/modules/home/controllers/home_controller.dart';
import 'package:my_project/modules/home/widgets/nav_bar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    final height = context.screenHeight;
    return Obx(
      () => Container(
        height: height * 0.1,
        decoration: BoxDecoration(
          color: AppColors.onPrimary,
          boxShadow: [
            BoxShadow(
              color: AppColors.navBarShadow,
              offset: const Offset(0, -10),
              blurRadius: 40,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavBarItem(
              imagePath: AppImages.bottomHome,
              isSelected: controller.currentIndex.value == 0,
              onTap: () => controller.onTabSelected(0),
            ),
            NavBarItem(
              imagePath: AppImages.bottomSearch,
              isSelected: controller.currentIndex.value == 1,
              onTap: () => controller.onTabSelected(1),
            ),
            SizedBox(width: context.screenWidth * 0.2),
            NavBarItem(
              imagePath: AppImages.bottomNotifications,
              isSelected: controller.currentIndex.value == 2,
              onTap: () => controller.onTabSelected(2),
            ),
            NavBarItem(
              imagePath: AppImages.bottomProfile,
              isSelected: controller.currentIndex.value == 3,
              onTap: () => controller.onTabSelected(3),
            ),
          ],
        ),
      ),
    );
  }
}
