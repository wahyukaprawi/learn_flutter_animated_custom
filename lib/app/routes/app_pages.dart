import 'package:get/get.dart';

import '../modules/animated_decorated_box_transition/bindings/animated_decorated_box_transition_binding.dart';
import '../modules/animated_decorated_box_transition/views/animated_decorated_box_transition_view.dart';
import '../modules/animated_fade_transition/bindings/animated_fade_transition_binding.dart';
import '../modules/animated_fade_transition/views/animated_fade_transition_view.dart';
import '../modules/animated_widget/bindings/animated_widget_binding.dart';
import '../modules/animated_widget/views/animated_widget_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_WIDGET,
      page: () => const AnimatedWidgetView(),
      binding: AnimatedWidgetBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_DECORATED_BOX_TRANSITION,
      page: () => const AnimatedDecoratedBoxTransitionView(),
      binding: AnimatedDecoratedBoxTransitionBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_FADE_TRANSITION,
      page: () => const AnimatedFadeTransitionView(),
      binding: AnimatedFadeTransitionBinding(),
    ),
  ];
}
