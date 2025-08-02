import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/core/constants/app_strings.dart';
import 'package:my_project/core/theme/app_theme.dart';
import 'package:my_project/modules/home/controllers/home_controller.dart';
import 'package:my_project/modules/home/views/combined_screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const CombinedScreens(),
    );
  }
}
