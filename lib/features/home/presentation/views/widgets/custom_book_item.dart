import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        padding: const EdgeInsets.all(1.5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.3),
              blurRadius: 3.0,
            )
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYYdD63QUwvPLqy6dwnh_v40lmAd_l30ElHCnuEXc&s',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
