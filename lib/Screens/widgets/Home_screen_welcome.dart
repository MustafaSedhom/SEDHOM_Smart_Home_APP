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
            Text("Welcome Home", style: APPFontStyle.app_style_poppins()),
            Gap(30),
            Text("Garret Reynolds", style: APPFontStyle.app_style_poppins()),
          ],
        ),
        Image.asset("images/image.png", height: 150, width: 150),
      ],
    );
  }
}
