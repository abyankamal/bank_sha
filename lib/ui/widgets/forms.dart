import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormsField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final bool isObsecure;
  const CustomFormsField({
    Key? key,
    required this.title,
    this.controller,
    this.isObsecure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: isObsecure,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14) 
            ),
          contentPadding: EdgeInsets.all(12)
          ),
        )
      ],
    );
  }
}