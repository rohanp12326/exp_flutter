import 'package:flutter/material.dart';
import 'package:my_project/core/constants/app_dimensions.dart';
import 'package:my_project/core/utils/size_extensions.dart';
import 'package:my_project/modules/home/widgets/category_section.dart';
import 'package:my_project/modules/home/widgets/custom_header.dart';
import 'package:my_project/modules/home/widgets/featured_section.dart';
import 'package:my_project/modules/home/widgets/popular_recipes_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    CustomHeader(),
                    SizedBox(height: AppDimensions.medium),
                    FeaturedSection(),
                    SizedBox(height: AppDimensions.medium),
                    CategorySection(),
                    SizedBox(height: AppDimensions.medium),
                    PopularRecipesSection(),
                    SizedBox(height: 80),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
