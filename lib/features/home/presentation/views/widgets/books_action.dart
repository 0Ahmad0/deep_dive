import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';


class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                text: '19.9\$',
                textColor: Colors.black,
                fontSize: 24.0,
                backGroundColor: Colors.white,
                borderRadius: BorderRadius.horizontal(left: Radius.circular(8.0)),
              )),
          Expanded(
              child: CustomButton(
                text: 'Free preview',
                textColor: Colors.white,
                backGroundColor: Color(0xffEF8262),
                borderRadius: BorderRadius.horizontal(right: Radius.circular(8.0)),
              )),
        ],
      ),
    );
  }
}
