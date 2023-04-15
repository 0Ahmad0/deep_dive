import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {},
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))

      ],
    );
  }
}
