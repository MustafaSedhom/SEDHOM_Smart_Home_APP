import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/Screens/widgets/Home_screen_appbar.dart';
import 'package:smart_home_app/Screens/widgets/Home_screen_devices.dart';
import 'package:smart_home_app/Screens/widgets/Home_screen_welcome.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Gap(10),
                // appBar
                HomeScreenAppbar(),
                Gap(30),
                // welcome
                HomeScreenWelcome(),
                Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Divider(thickness: 2),
                ),
                // smart devices text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    "Smart Devices",
                    style: APPFontStyle.app_style_poppins(),
                  ),
                ),
                SizedBox(height: 400, child: HomeScreenDevices()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
