import 'package:flutter/material.dart';
import 'package:my_project/core/config/responsive_config.dart';
import 'package:my_project/core/constants/color_palette.dart';
import 'package:my_project/core/constants/dimens.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final resp = context.responsive;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: resp.gutter / 4),
        padding: EdgeInsets.symmetric(vertical: resp.gutter / 2),
        decoration: BoxDecoration(
          color: isSelected ? ColorPalette.secondary : ColorPalette.background,
          borderRadius: BorderRadius.circular(AppDimens.categoryBorderRadius),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: resp.subtitleFontSize,
              color: isSelected ? Colors.white : ColorPalette.textPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
