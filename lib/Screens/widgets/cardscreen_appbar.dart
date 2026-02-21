import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class CardscreenAppbar extends StatelessWidget {
  const CardscreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: APPColors.Icon_Color,
              ),
            ),
            Column(
              children: [
                Text("Temperature", style: APPFontStyle.app_style_poppins()),
                Gap(5),
                Text(
                  "Living Room",
                  style: APPFontStyle.app_style_poppins(
                    size: 12,
                    font_Weight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            InkWell(
              child: Icon(
                Icons.more_vert_outlined,
                size: 20,
                color: APPColors.Icon_Color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
