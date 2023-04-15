import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles_manager.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 20,
          ),
          const SizedBox(
            width: 6.0,
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(text: '4.4', style: StyleManager.textStyle20),
              TextSpan(text: ' '),
              TextSpan(
                  text: '(13.8888888)',
                  style: StyleManager.textStyle14.copyWith(color: Colors.grey)),
            ]),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
