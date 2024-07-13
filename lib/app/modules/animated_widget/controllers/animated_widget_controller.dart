import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedWidgetController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController animationC;

  @override
  void onInit() {
    animationC = AnimationController(
        vsync: this,
        duration: const Duration(
          seconds: 2,
        ))
      ..repeat(
        reverse: true,
      );
    super.onInit();
  }

  @override
  void onClose() {
    animationC.dispose();
    super.onClose();
  }
}