import 'package:flutter/material.dart';
import 'package:my_project/core/constants/app_colors.dart';
import 'package:my_project/core/constants/app_dimensions.dart';
import 'package:my_project/core/constants/app_images.dart';
import 'package:my_project/core/utils/size_extensions.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeFactor = context.screenHeight * 0.063;
    return Container(
      width: sizeFactor,
      height: sizeFactor,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.secondary,
        boxShadow: [
          BoxShadow(
            color: AppColors.floatingShadow,
            offset: const Offset(0, 0),
            blurRadius: 30,
          )
        ],
      ),
      child: Center(
        child: Image.asset(
          AppImages.chef,
          height: context.screenHeight * 0.03,
        ),
      ),
    );
  }
}
