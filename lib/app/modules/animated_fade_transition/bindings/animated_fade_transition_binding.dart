import 'package:get/get.dart';

import '../controllers/animated_fade_transition_controller.dart';

class AnimatedFadeTransitionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedFadeTransitionController>(
      () => AnimatedFadeTransitionController(),
    );
  }
}
