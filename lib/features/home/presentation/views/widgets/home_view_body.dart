import '/core/utils/assets_manager.dart';
import '/core/utils/strings_manager.dart';
import '/core/utils/styles_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bes_seller_list_view.dart';
import 'best_seller_item.dart';
import 'custom_appbar.dart';
import 'custom_book_item.dart';
import 'featured_book_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),

                child: Text(
                  StringsManager.homeTitleText,
                  style: StyleManager.textStyle18,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      const SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}

