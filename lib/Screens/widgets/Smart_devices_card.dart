import 'package:flutter/material.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class SmartDevicesCard extends StatelessWidget {
  const SmartDevicesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text("Key", style: APPFontStyle.app_style_poppins(size: 20)),
      ),
    );
  }
}
