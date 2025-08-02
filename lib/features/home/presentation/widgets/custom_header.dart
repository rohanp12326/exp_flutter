import 'package:flutter/material.dart';
import 'package:my_project/core/config/responsive_config.dart';
import 'package:my_project/core/constants/color_palette.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final resp = context.responsive;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: resp.gutter,
        vertical: resp.gutter / 2,
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
                    'assets/images/sun_icon.png',
                    height: resp.subtitleFontSize,
                  ),
                  SizedBox(width: resp.gutter / 2),
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      fontSize: resp.subtitleFontSize,
                      fontWeight: FontWeight.normal,
                      color: ColorPalette.textPrimary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: resp.gutter / 4),
              Text(
                'Alena Sabyan',
                style: TextStyle(
                  fontSize: resp.titleFontSize,
                  fontWeight: FontWeight.w800,
                  color: ColorPalette.textPrimary,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Image.asset('assets/images/cart_icon.png'),
                iconSize: resp.subtitleFontSize * 1.5,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/images/bottom_profile_icon.png'),
                iconSize: resp.subtitleFontSize * 1.5,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
