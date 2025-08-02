import 'package:flutter/widgets.dart';

class Responsive {
  final double screenWidth;
  final double screenHeight;
  final Orientation orientation;

  Responsive._({
    required this.screenWidth,
    required this.screenHeight,
    required this.orientation,
  });

  factory Responsive.fromContext(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Responsive._(
      screenWidth: mq.size.width,
      screenHeight: mq.size.height,
      orientation: mq.orientation,
    );
  }

  double get gutter => screenWidth * 0.04;

  double get titleFontSize =>
      orientation == Orientation.portrait ? screenHeight * 0.027 : screenHeight * 0.022;

  double get subtitleFontSize => screenHeight * 0.02;

  double get featuredHeight => screenHeight * 0.25;
  double get popularHeight => screenHeight * 0.25;
  double get bottomNavBarHeight => screenHeight * 0.1;
  double get floatingButtonSize => screenHeight * 0.063;
  double get cardAspectRatioFeatured => 16 / 9;
}

extension ResponsiveExtension on BuildContext {
  Responsive get responsive => Responsive.fromContext(this);
}
