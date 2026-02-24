import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/Screens/widgets/custom_app_bar.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class Wifiscreen extends StatelessWidget {
  const Wifiscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPColors.APP_Main_Color,
      body: Column(
        children: [
          Gap(20),
          CustomAppBar(
            show_title: true,
            show_menu_icon: false,
            Title: "WIFI",
            small_Title: "Scaning",
            back_pressed: () {
              Navigator.of(context).pop();
            },
          ),
          Gap(20),
        ],
      ),
    );
  }
}
