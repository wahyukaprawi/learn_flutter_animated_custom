import 'dart:math';

import 'package:flutter/material.dart';

class BoxWidget extends AnimatedWidget {
  // ignore: prefer_typing_uninitialized_variables
  final animation;
  const BoxWidget(this.animation, {super.key}) : super(listenable: animation);

  get proggres => listenable as Animation<dynamic>;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: proggres.value * pi * 0.25,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
