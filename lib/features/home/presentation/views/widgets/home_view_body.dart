import 'package:deep_dive/core/utils/assets_manager.dart';
import 'package:deep_dive/core/utils/strings_manager.dart';
import 'package:deep_dive/core/utils/style_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_appbar.dart';
import 'custom_book_item.dart';
import 'featured_book_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          const SizedBox(height: 20.0,),
          Text(StringsManager.homeTitleText,
          style: StyleManager.titleMedium,
          )
        ],
      ),
    );
  }
}

