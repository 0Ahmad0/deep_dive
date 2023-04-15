import 'package:flutter/material.dart';

import '../../../../../core/utils/strings_manager.dart';

class SlidingTextAnimation extends StatelessWidget {
  const SlidingTextAnimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              StringsManager.splashText,
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.width / 18),
            ),
          );
        });
  }
}
