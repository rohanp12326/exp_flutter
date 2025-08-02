import 'package:flutter/material.dart';
import 'package:my_project/core/constants/app_colors.dart';
import 'package:my_project/core/constants/app_dimensions.dart';
import 'package:my_project/core/constants/app_images.dart';
import 'package:my_project/core/constants/app_strings.dart';
import 'package:my_project/core/utils/size_extensions.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.medium,
        vertical: AppDimensions.small,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    AppImages.sun,
                    height: height * 0.025,
                  ),
                  const SizedBox(width: AppDimensions.small),
                  Text(
                    AppStrings.goodMorning,
                    style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppDimensions.small / 2),
              Text(
                AppStrings.userName,
                style: TextStyle(
                  fontSize: height * 0.027,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Image.asset(AppImages.cart),
                iconSize: height * 0.03,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(AppImages.bottomProfile),
                iconSize: height * 0.03,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
