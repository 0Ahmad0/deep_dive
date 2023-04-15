import '/core/utils/assets_manager.dart';
import '/core/utils/routes_manager.dart';
import '/core/utils/strings_manager.dart';
import '/features/home/presentation/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import 'sliding_text_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    _initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsManager.logo,
          width: MediaQuery
              .of(context)
              .size
              .width / 2,
          height: MediaQuery
              .of(context)
              .size
              .width / 2,
        ),
        const SizedBox(
          height: 20.0,
        ),
        SlidingTextAnimation(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void _initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    slidingAnimation = Tween<Offset>(
        begin: Offset(0, 10),
        end: Offset.zero
    ).animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).replace(RoutesManager.kHomeView);
      // Get.to(() => HomeView(), transition: Transition.fadeIn,duration: kTransitionDuration);
    });
  }
}
