import '/core/utils/styles_manager.dart';
import '/features/home/presentation/views/widgets/book_rating.dart';
import '/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'best_seller_item.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'similler_book_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomBookDetailsAppBar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.22),
            child: FeaturedBookItem(),
          ),
          const SizedBox(height: 24.0),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'The Jungle Book',
              textAlign: TextAlign.center,
              style: StyleManager.textStyle26,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Text(
                'The Jungle Book',
                textAlign: TextAlign.center,
                style: StyleManager.textStyle18
                    .copyWith(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const BooksAction(),
          ),
          const SizedBox(height: 26.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                'You can also like',
                style: StyleManager.textStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const SimilarBooksListView(),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
