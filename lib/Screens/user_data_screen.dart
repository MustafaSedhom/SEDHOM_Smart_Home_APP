import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/Screens/widgets/custom_app_bar.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class UserDataScreen extends StatelessWidget {
  const UserDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPColors.APP_Main_Color,
      body: Column(
        children: [
          Gap(20),
          CustomAppBar(
            show_title: true,
            Title: "Settings",
            small_Title: "Profile",
            back_pressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
