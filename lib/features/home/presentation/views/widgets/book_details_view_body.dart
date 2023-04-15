import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0
        ),
        child: Column(
          children: [
            CustomBookDetailsAppBar()
          ],
        ),
      ),
    );
  }
}

