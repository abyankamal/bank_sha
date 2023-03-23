import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButtonFilled extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  const CustomButtonFilled({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56)
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16
          ),
        ),
      ),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextWidget({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero
        ),
        child: Text(
          title,
          style: greyTextStyle,
        ),
      ),
  );
  }
}