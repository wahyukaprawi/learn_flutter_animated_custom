import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_fade_transition_controller.dart';

class AnimatedFadeTransitionView
    extends GetView<AnimatedFadeTransitionController> {
  const AnimatedFadeTransitionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Fade Transition View'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: FadeTransition(
          opacity: controller.curvedAnimation,
          child: const SizedBox(
            width: 200,
            height: 200,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
