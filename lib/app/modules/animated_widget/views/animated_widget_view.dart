import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_widget_controller.dart';
import 'box_widget.dart';

class AnimatedWidgetView extends GetView<AnimatedWidgetController> {
  const AnimatedWidgetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedWidgetView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoxWidget(controller.animationC),
              const SizedBox(height: 50),
              BoxWidget(controller.animationC),
              const SizedBox(height: 50),
              BoxWidget(controller.animationC),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
