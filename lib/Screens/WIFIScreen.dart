import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/Respnsive/ScreenArea.dart';
import 'package:smart_home_app/Screens/widgets/custom_app_bar.dart';
import 'package:smart_home_app/Screens/widgets/custom_text_feild.dart';
import 'package:smart_home_app/Screens/widgets/wifi_list_view.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class Wifiscreen extends StatelessWidget {
  Wifiscreen({super.key});
  TextEditingController _name_controller = TextEditingController();
  TextEditingController _pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenArea.init(context);
    return Scaffold(
      backgroundColor: APPColors.APP_Main_Color,
      body: Column(
        children: [
          Gap(20),
          CustomAppBar(
            show_title: true,
            Menu_Icon: Icons.settings_outlined,
            menu_icon_size: 30,
            Title: "WIFI",
            small_Title: "Scaning",
            back_pressed: () {
              Navigator.of(context).pop();
            },
          ),
          Gap(20),
          WifiListView(),
          Gap(20),
          // text feild for wifi name
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFeild(
              controller: _name_controller,
              Hint_text: "WiFi Name",
            ),
          ),
          // text feild for wifi pasword
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFeild(
              controller: _pass_controller,
              Hint_text: "WiFi Password",
              is_password: true,
              icon: Icons.lock,
            ),
          ),
        ],
      ),
    );
  }
}
