import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'credit_card_ui_background.dart';
import 'credit_card_ui_content.dart';

class CreditCardUi extends StatelessWidget {
  const CreditCardUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Transform.rotate(
        angle: -8 * math.pi / 180,
        child: const CreditCardUiBackground(
          color: Color(0xFF2824FF),
          content: CreditCardUiContent(),
        ),
      ),
      const CreditCardUiBackground(
        color:  Color(0xFFC233FF),
        content: CreditCardUiContent(),
      ),
    ]);
  }
}
