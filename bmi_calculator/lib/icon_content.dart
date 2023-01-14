import 'package:flutter/material.dart';

import 'constant.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.iconData, required this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
