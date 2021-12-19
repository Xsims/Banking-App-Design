import 'package:flutter/material.dart';

import 'credit_card_ui_top_right_background.dart';

class CreditCardUiBackground extends StatelessWidget {
  final Widget? content;
  final Color color;
  final double height;
  final double width;

  const CreditCardUiBackground(
      {Key? key,
      this.content,
      required this.color,
      this.height = 170,
      this.width = 290})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            HSLColor.fromColor(color).withLightness(0.80).toColor(),
            color,
          ],
        ),
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: CreditCardUiTopRightBackground(
          content: content,
        ),
      ),
    );
  }
}
