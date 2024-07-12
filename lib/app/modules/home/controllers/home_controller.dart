import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
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
