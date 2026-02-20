import 'package:flutter/material.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class HomeScreenAppbar extends StatelessWidget {
  const HomeScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(child: Image.asset("images/menu.png", height: 40, width: 40)),
        InkWell(
          child: CircleAvatar(
            child: Center(
              child: Text("S", style: APPFontStyle.app_style_poppins(size: 20)),
            ),
          ),
        ),
      ],
    );
  }
}
