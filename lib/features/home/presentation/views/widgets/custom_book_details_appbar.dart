import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))

      ],
    );
  }
}
