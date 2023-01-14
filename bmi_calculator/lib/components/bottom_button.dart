import 'package:flutter/material.dart';

import '../constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.text, required this.onPress});
  String text;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10),
        //padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}
