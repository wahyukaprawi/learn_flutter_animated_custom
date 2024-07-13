import 'package:get/get.dart';

import '../controllers/animated_avatar_glow_controller.dart';

class AnimatedAvatarGlowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedAvatarGlowController>(
      () => AnimatedAvatarGlowController(),
    );
  }
}
