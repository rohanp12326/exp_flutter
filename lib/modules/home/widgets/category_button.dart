import 'package:flutter/material.dart';
import 'package:my_project/core/constants/app_colors.dart';
import 'package:my_project/core/constants/app_dimensions.dart';
import 'package:my_project/core/utils/size_extensions.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  const CategoryButton({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin:
              const EdgeInsets.symmetric(horizontal: AppDimensions.small / 2),
          padding:
              const EdgeInsets.symmetric(vertical: AppDimensions.small),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : AppColors.background,
            borderRadius:
                BorderRadius.circular(AppDimensions.radius * 2),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: height * 0.018,
                color:
                    isSelected ? AppColors.onPrimary : AppColors.textPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
