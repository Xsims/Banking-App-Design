import 'package:flutter/material.dart';
import 'credit_card_ui_background.dart';
import 'credit_card_ui_content.dart';

class CreditCardUi extends StatelessWidget {
  final Color color;
  const CreditCardUi({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable(
      child: Material(
        color: Colors.transparent,
        child: CreditCardUiBackground(
          color: color,
          content: const CreditCardUiContent(),
        ),
      ),
      feedback: Material(
        color: Colors.transparent,
        child: CreditCardUiBackground(
          color: color,
          content: const CreditCardUiContent(),
        ),
      ),
      childWhenDragging: Container(),
    );
  }
}
