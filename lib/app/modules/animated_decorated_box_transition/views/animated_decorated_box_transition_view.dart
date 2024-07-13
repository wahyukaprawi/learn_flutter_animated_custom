import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_decorated_box_transition_controller.dart';

class AnimatedDecoratedBoxTransitionView
    extends GetView<AnimatedDecoratedBoxTransitionController> {
  const AnimatedDecoratedBoxTransitionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Decorated Box Transition View'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: controller.decorationTween.animate(controller.dbtC),
          child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsetsDirectional.all(20),
            child: const FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
