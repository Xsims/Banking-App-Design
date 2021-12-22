import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.dashboard,
            color: Colors.white,
            size: 36,
          ),
          Text(
            DateFormat.yMMMMd().format(DateTime.now()),
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          const Icon(
            Icons.notifications,
            color: Colors.white,
            size: 36,
          ),
        ],
      ),
    );
  }
}
