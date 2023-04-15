import 'package:flutter/material.dart';

import '../../../../../core/utils/style_manager.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.8 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.redAccent),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://marketplace.canva.com/EAFA7N_NLQs/1/0/1003w/canva-cute-colorful-watercolor-simple-illustrated-young-adult-romance-book-cover-ooKN90UU-H0.jpg',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: MediaQuery.of(context).size.width / 2.5,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 26.0,
          ),
          Expanded(
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Harry Potter and the Gobiet of Fire',
                  style: StyleManager.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(
                      top: 14.0
                    ),
                    child: Text('JK Rowing',style: StyleManager.textStyle18,),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text('19.33\$',style: StyleManager.textStyle30,),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: '4.4',
                              style: StyleManager.textStyle20
                            ),
                            TextSpan(text: ' '),
                            TextSpan(
                              text: '(13.8)',
                                style: StyleManager.textStyle14.copyWith(
                                  color: Colors.grey
                                )
                            ),
                          ]))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
