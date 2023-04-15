import 'package:deep_dive/core/utils/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0
        ),
        child: Row(
          children: [
            Image.asset(
              AssetsManager.logo,
              width: MediaQuery.of(context).size.width * 0.125,
              height: MediaQuery.of(context).size.width * 0.125,
            ),
            const Spacer(),
            IconButton(onPressed: () {
              GoRouter.of(context).push(RoutesManager.kSearchView);
            }, icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ))
          ],
        ),
      ),
    );
  }
}
