import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
          color: Colors.redAccent,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYYdD63QUwvPLqy6dwnh_v40lmAd_l30ElHCnuEXc&s',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
