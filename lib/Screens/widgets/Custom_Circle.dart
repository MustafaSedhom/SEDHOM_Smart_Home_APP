import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  final Color color;
  final double Raduis;
  const CustomCircle({super.key, required this.color, required this.Raduis});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Raduis,
      height: Raduis,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
