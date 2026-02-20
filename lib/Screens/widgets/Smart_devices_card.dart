import 'package:flutter/material.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class SmartDevicesCard extends StatelessWidget {
  final String name;
  final String image_path;
  const SmartDevicesCard({super.key, required this.name, required this.image_path});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(name, style: APPFontStyle.app_style_poppins(size: 20)),
      ),
    );
  }
}
