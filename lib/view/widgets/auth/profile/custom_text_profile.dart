import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hexcolor/hexcolor.dart';

class CustomTextProfile extends StatelessWidget {
  final String text;
  const CustomTextProfile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr.toUpperCase(),
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
            color: HexColor('#212124'),
          ),
    );
  }
}
