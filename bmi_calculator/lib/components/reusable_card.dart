import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.myColor, this.cardChild, this.onPress});

  final Color myColor;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(15),
        child: cardChild,
      ),
    );
  }
}
