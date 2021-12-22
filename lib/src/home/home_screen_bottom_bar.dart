import 'package:flutter/material.dart';
import 'package:decorated_icon/decorated_icon.dart';

class ShinyBottomNavBarIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  const ShinyBottomNavBarIcon(
      {Key? key, required this.icon, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? DecoratedIcon(
            icon,
            size: 36,
            color: Colors.white,
            shadows: const [
              BoxShadow(
                  blurRadius: 42.0, color: Colors.white, spreadRadius: 30.0),
            ],
          )
        : Icon(
            icon,
            size: 36,
          );
  }
}
