import 'package:flutter/material.dart';
import 'package:my_project/features/home/domain/entities/recipe.dart';
import 'package:my_project/core/config/responsive_config.dart';
import 'package:my_project/core/constants/color_palette.dart';
import 'package:my_project/core/constants/dimens.dart';

class FeaturedCard extends StatelessWidget {
  final Recipe recipe;

  const FeaturedCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    final resp = context.responsive;
    return GestureDetector(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: resp.cardAspectRatioFeatured,
        child: Container(
          decoration: BoxDecoration(
            color: ColorPalette.featuredBackground,
            borderRadius: BorderRadius.circular(AppDimens.borderRadius),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppDimens.borderRadius),
                child: Image.asset(
                  recipe.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDimens.cardOverlayPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.title,
                      style: TextStyle(
                        fontSize: resp.subtitleFontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: resp.subtitleFontSize / 1.5,
                          backgroundImage:
                              const AssetImage('assets/images/user_image_1.png'),
                        ),
                        SizedBox(width: resp.gutter / 2),
                        Text(
                          recipe.creator ?? '',
                          style: TextStyle(
                            fontSize: resp.subtitleFontSize * 0.75,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          recipe.time,
                          style: TextStyle(
                            fontSize: resp.subtitleFontSize * 0.75,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
