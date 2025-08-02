import 'package:flutter/material.dart';
import 'package:my_project/core/config/responsive_config.dart';

class NavBarItem extends StatelessWidget {
  final String imagePath;

  const NavBarItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final resp = context.responsive;
    return Image.asset(
      imagePath,
      height: resp.subtitleFontSize * 1.5,
    );
  }
}
