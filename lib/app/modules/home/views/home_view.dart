import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_flutter_animated_widget/app/modules/home/views/box_widget.dart';

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
            BoxWidget(controller.animationC),
            const SizedBox(
              height: 50
            ),
            BoxWidget(controller.animationC),
            const SizedBox(
              height: 50
            ),
            BoxWidget(controller.animationC),
            const SizedBox(
              height: 50
            ),
          ],
        ),
      ),
    );
  }
}
