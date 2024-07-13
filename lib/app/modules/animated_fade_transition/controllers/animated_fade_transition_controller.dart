import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AnimatedFadeTransitionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController ftC;
  late CurvedAnimation curvedAnimation;

  @override
  void onInit() {
    ftC = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 3,
      ),
    )..repeat(
        reverse: true,
      );

    curvedAnimation = CurvedAnimation(
      parent: ftC,
      curve: Curves.fastOutSlowIn,
    );
    super.onInit();
  }

  @override
  void onClose() {
    ftC.dispose();
    super.onClose();
  }
}
