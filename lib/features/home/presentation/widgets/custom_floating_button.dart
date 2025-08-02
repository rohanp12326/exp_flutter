import 'package:flutter/material.dart';
import 'package:my_project/core/config/responsive_config.dart';
import 'package:my_project/core/constants/color_palette.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = context.responsive;
    return Container(
      width: resp.floatingButtonSize,
      height: resp.floatingButtonSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorPalette.primary,
        boxShadow: [
          BoxShadow(
            color: ColorPalette.floatingShadow,
            offset: Offset.zero,
            blurRadius: 30,
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          'assets/images/chef_icon.png',
          height: resp.subtitleFontSize * 1.5,
        ),
      ),
    );
  }
}
