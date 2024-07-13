import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_avatar_glow_controller.dart';

class AnimatedAvatarGlowView extends GetView<AnimatedAvatarGlowController> {
  const AnimatedAvatarGlowView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Avatar Glow View'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: AvatarGlow(
          glowColor: Theme.of(context).colorScheme.inversePrimary,
          duration: const Duration(
            seconds: 3,
          ),
          child: Container(
            height: 135,
            width: 135,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                image: AssetImage('assets/profileimage.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
