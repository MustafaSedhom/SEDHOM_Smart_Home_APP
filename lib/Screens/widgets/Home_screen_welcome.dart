import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/constance/AppStyle.dart' show APPFontStyle;

class HomeScreenWelcome extends StatelessWidget {
  const HomeScreenWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Welcome Home",
              style: APPFontStyle.app_style_poppins(
                font_Weight: FontWeight.w300,
              ),
            ),
            Gap(10),
            Text("SEDHOM Smart", style: APPFontStyle.app_style_poppins()),
          ],
        ),
        Image.asset("images/image.png", height: 150, width: 150),
      ],
    );
  }
}
