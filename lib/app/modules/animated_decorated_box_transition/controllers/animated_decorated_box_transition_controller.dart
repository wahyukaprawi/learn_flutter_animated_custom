import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedDecoratedBoxTransitionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController dbtC;
  late DecorationTween decorationTween;

  @override
  void onInit() {
    dbtC = AnimationController(
      duration: const Duration(
        seconds: 3,
      ),
      vsync: this,
    )..repeat(reverse: true);
    decorationTween = DecorationTween(
      begin: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 2,
            offset: Offset(2, 2)
          )
        ]
      ),
      end: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
      ),
    );
    super.onInit();
  }

  @override
  void onClose() {
    dbtC.dispose();
    super.onClose();
  }
}
