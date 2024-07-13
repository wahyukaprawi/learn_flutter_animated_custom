import 'package:get/get.dart';

import '../controllers/animated_decorated_box_transition_controller.dart';

class AnimatedDecoratedBoxTransitionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedDecoratedBoxTransitionController>(
      () => AnimatedDecoratedBoxTransitionController(),
    );
  }
}
