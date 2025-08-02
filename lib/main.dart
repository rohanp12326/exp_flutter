import 'package:flutter/material.dart';
import 'package:my_project/core/constants/color_palette.dart';
import 'package:my_project/features/home/presentation/pages/combined_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorPalette.secondary),
        useMaterial3: true,
      ),
      home: const CombinedScreens(),
    );
  }
}
