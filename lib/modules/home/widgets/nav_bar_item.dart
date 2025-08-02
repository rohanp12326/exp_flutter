import 'package:flutter/material.dart';
import 'package:my_project/core/constants/app_colors.dart';

class NavBarItem extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;
  const NavBarItem({
    Key? key,
    required this.imagePath,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          isSelected ? AppColors.primary : AppColors.textSecondary,
          BlendMode.srcIn,
        ),
        child: Image.asset(
          imagePath,
          height: MediaQuery.of(context).size.height * 0.03,
        ),
      ),
    );
  }
}
