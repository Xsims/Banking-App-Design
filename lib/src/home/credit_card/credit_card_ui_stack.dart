import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'credit_card_ui.dart';

class CreditCardUiStack extends StatelessWidget {
  const CreditCardUiStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: const [
              Text(
                "My Cards",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Stack(children: [
            Transform.rotate(
              angle: -8 * math.pi / 180,
              child: const CreditCardUi(
                color: Color(0xFF2824FF),
              ),
            ),
            const CreditCardUi(
              color: Color(0xFFC233FF),
            ),
          ]),
        ],
      ),
    );
  }
}
