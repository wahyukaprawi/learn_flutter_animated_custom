import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.ANIMATED_WIDGET),
              child: const Text('Animated Widget'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () =>
                  Get.toNamed(Routes.ANIMATED_DECORATED_BOX_TRANSITION),
              child: const Text('Animated Decoration Box Transition'),
            ),
          ],
        ),
      ),
    );
  }
}
