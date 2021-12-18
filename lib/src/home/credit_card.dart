// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:math' as math;


import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Transform.rotate(
        angle: -8 * math.pi / 180,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF93A3FF),
                  Color(0xFF2824FF),
                ],
              ),
            ),
            child: SizedBox(
              height: 170.0,
              width: 290,
            )),
      ),
      Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          //color: Colors.purpleAccent[100],

          boxShadow: [
            const BoxShadow(
              color: Colors.black,
            ),
            const BoxShadow(
              color: Color(0xFFC233FF),
              spreadRadius: -30.0,
              blurRadius: 12.0,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFEF93FF),
              Color(0xFFC233FF),
            ],
          ),
        ),
        child: SizedBox(
            height: 170.0,
            width: 290,
            child: Stack(children: [
              Positioned(
                  top: -40,
                  right: -30,
                  child: Container(
                    decoration: BoxDecoration(
                      //color: Color(0x81FFFFFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(200),
                      ),
                      // boxShadow: [
                      //   BoxShadow(
                      //       blurRadius: 42.0,
                      //       color: Colors.white,
                      //       spreadRadius: 30.0),
                      // ],
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
                  )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mohamed Arshad",
                          // style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/1280px-Visa_Inc._logo.svg.png",
                          height: 16,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Text(
                      "0562 6589 2235 0030",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Balance Amount",
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$ 15,125"),
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/800px-Mastercard_2019_logo.svg.png",
                          height: 18,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ])),
      ),
    ]);
  }
}
