import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/modules/home/controllers/home_controller.dart';
import 'package:my_project/modules/home/views/home_screen.dart';
import 'package:my_project/modules/home/widgets/custom_bottom_nav_bar.dart';
import 'package:my_project/modules/home/widgets/custom_floating_button.dart';

class CombinedScreens extends StatelessWidget {
  const CombinedScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Scaffold(
      body: Obx(() {
        switch (controller.currentIndex.value) {
          case 0:
            return const HomeScreen();
          default:
            return const SizedBox();
        }
      }),
      bottomNavigationBar: const CustomBottomNavBar(),
      floatingActionButton: const CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
