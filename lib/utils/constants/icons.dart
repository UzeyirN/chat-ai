import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final double size;

  const AppIcons({
    super.key,
    required this.icon,
    required this.backgroundColor,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size + 8,
      backgroundColor: backgroundColor,
      child: Icon(icon, color: Colors.white, size: size),
    );
  }
}
