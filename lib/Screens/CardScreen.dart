import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/Screens/widgets/Custom_Circle.dart';
import 'package:smart_home_app/Screens/widgets/Room_card.dart';
import 'package:smart_home_app/Screens/widgets/cardscreen_appbar.dart';
import 'package:smart_home_app/Screens/widgets/custom_Divider.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class Cardscreen extends StatefulWidget {
  const Cardscreen({super.key});

  @override
  State<Cardscreen> createState() => _CardscreenState();
}

class _CardscreenState extends State<Cardscreen> {
  bool Devices_statues = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPColors.APP_Main_Color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              CardscreenAppbar(),
              Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Devices",
                          style: APPFontStyle.app_style_poppins(size: 25),
                        ),
                        Text(
                          (Devices_statues) ? "Connected" : "NotConnected",
                          style: APPFontStyle.app_style_poppins(
                            size: 11,
                            font_Weight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          (Devices_statues) ? "On" : "Off",
                          style: APPFontStyle.app_style_poppins(
                            font_Weight: FontWeight.w500,
                          ),
                        ),
                        (Devices_statues)
                            ? Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: CustomCircle(
                                  color: Colors.black,
                                  Raduis: 20,
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(20),
              CustomDivider(),
              RoomCard(
                icon_url: "images/air-conditioner.png",
                name: "AC",
                state: Devices_statues,
              ),
              CustomDivider(),
              RoomCard(
                icon_url: "images/fan.png",
                name: "Fan",
                state: Devices_statues,
              ),
              CustomDivider(),
              RoomCard(
                icon_url: "images/smart-tv.png",
                name: "TV",
                state: Devices_statues,
              ),
              CustomDivider(),
              RoomCard(
                icon_url: "images/light-bulb.png",
                name: "Lamp",
                state: Devices_statues,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
