import 'package:flutter/material.dart';

class CreditCardUiTopRightBackground extends StatelessWidget {
  final Widget? content;

  const CreditCardUiTopRightBackground({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: -40,
        right: -30,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(200),
            ),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0x00FFFFFF),
                Color(0xFFFFFFFF),
              ],
            ),
          ),
          height: 150,
          width: 150,
        ),
      ),
      content ?? Container(),
    ]);
  }
}