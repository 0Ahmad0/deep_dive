import 'package:deep_dive/core/utils/assets_manager.dart';
import 'package:deep_dive/core/utils/strings_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsManager.logo,
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.width / 2,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          StringsManager.splashText,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
