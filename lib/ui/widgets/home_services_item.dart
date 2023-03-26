import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeServicesItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const HomeServicesItem({
    Key? key,
    required this.iconUrl,
    required this.title,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor 
          ),
          child: Center(
            child: Image.asset(
              iconUrl,
              height: 26,
              width: 26,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium
          ),
        )
      ]
    );
  }
}