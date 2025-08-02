import 'package:flutter/material.dart';
import 'package:my_project/core/config/responsive_config.dart';
import 'package:my_project/core/constants/color_palette.dart';
import 'category_button.dart';

class CategorySection extends StatelessWidget {
  final String selectedCategory;
  final ValueChanged<String> onCategorySelected;

  const CategorySection({
    super.key,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    final resp = context.responsive;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: resp.gutter),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: TextStyle(
                  fontSize: resp.titleFontSize,
                  fontWeight: FontWeight.w800,
                  color: ColorPalette.textPrimary,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontSize: resp.subtitleFontSize * 0.75,
                    fontWeight: FontWeight.w800,
                    color: ColorPalette.secondary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: resp.gutter / 2),
          Row(
            children: ['Breakfast', 'Lunch', 'Dinner']
                .map(
                  (category) => Expanded(
                    child: CategoryButton(
                      label: category,
                      isSelected: selectedCategory == category,
                      onTap: () => onCategorySelected(category),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
