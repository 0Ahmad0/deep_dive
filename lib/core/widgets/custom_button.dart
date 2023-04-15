import 'package:deep_dive/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
       this.borderRadius,
      required this.backGroundColor,
      required this.textColor,
      this.fontSize = 14.0})
      : super(key: key);
  final String text;
  final BorderRadius? borderRadius;
  final Color backGroundColor;
  final Color textColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(

        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).scaffoldBackgroundColor,
            backgroundColor: backGroundColor,
            minimumSize: Size(double.infinity, 60),
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(8.0))),
        onPressed: () {},
        child: FittedBox(
          child: Text(
            text,
            style: StyleManager.textStyle20.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize
            ),
          ),
        ));
  }
}
