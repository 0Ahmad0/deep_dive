import '/core/utils/strings_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles_manager.dart';
import '../../../../home/presentation/views/widgets/best_seller_item.dart';
import 'custom_search_textfiled.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextFiled(),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              StringsManager.searchResultText,
              style: StyleManager.textStyle18,
            ),
            const SizedBox(
              height: 20.0
            ),
            Expanded(child: SearchResultListView()),
          ],
        ),
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: const BestSellerBookItem(),
        );
      },
      itemCount: 10,
    );
  }
}
