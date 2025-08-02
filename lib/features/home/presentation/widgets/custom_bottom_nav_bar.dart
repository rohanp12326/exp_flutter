import 'package:flutter/material.dart';
import 'package:my_project/core/config/responsive_config.dart';
import 'package:my_project/core/constants/color_palette.dart';
import 'package:my_project/core/constants/dimens.dart';
import 'package:my_project/features/home/presentation/widgets/nav_bar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const CustomBottomNavBar({
    super.key,
    this.currentIndex = 0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final resp = context.responsive;
    return Container(
      height: resp.bottomNavBarHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: ColorPalette.navBarShadow,
            offset: const Offset(0, -AppDimens.bottomBarOffset),
            blurRadius: AppDimens.bottomBarBlurRadius,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => onTap?.call(0),
            child: const NavBarItem(imagePath: 'assets/images/bottom_home_icon.png'),
          ),
          GestureDetector(
            onTap: () => onTap?.call(1),
            child: const NavBarItem(imagePath: 'assets/images/bottom_search_icon.png'),
          ),
          SizedBox(width: resp.screenWidth * 0.2),
          GestureDetector(
            onTap: () => onTap?.call(2),
            child: const NavBarItem(imagePath: 'assets/images/bottom_notifications_icon.png'),
          ),
          GestureDetector(
            onTap: () => onTap?.call(3),
            child: const NavBarItem(imagePath: 'assets/images/bottom_profile_icon.png'),
          ),
        ],
      ),
    );
  }
}
