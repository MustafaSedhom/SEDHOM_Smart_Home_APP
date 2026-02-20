import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class SmartDevicesCard extends StatefulWidget {
  final String name;
  final String image_path;
  const SmartDevicesCard({
    super.key,
    required this.name,
    required this.image_path,
  });

  @override
  State<SmartDevicesCard> createState() => _SmartDevicesCardState();
}

class _SmartDevicesCardState extends State<SmartDevicesCard> {
  bool switch_state = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          switch_state = !switch_state;
        });
      },
      borderRadius: BorderRadius.circular(25),
      child: Container(
        decoration: BoxDecoration(
          color: switch_state
              ? APPColors.container_active_color
              : APPColors.container_color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.image_path,
                width: 60,
                height: 60,
                color: switch_state
                    ? APPColors.Icon_active_Color
                    : APPColors.Icon_Color,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Smart\n${widget.name}",

                      style: APPFontStyle.app_style_poppins(
                        size: 15,
                        font_color: switch_state
                            ? APPColors.font_active_color
                            : APPColors.font_color,
                      ),
                    ),
                    Gap(10),
                    Transform.rotate(
                      angle: (-90 * pi) / 180,
                      child: Switch(
                        value: switch_state,
                        trackColor: MaterialStateProperty.resolveWith<Color>((
                          states,
                        ) {
                          if (states.contains(MaterialState.selected)) {
                            return APPColors.Switch_color;
                          }
                          return APPColors.Switch_active_color;
                        }),
                        thumbColor: MaterialStateProperty.resolveWith<Color>((
                          states,
                        ) {
                          if (states.contains(MaterialState.selected)) {
                            return APPColors.Switch_active_color;
                          }
                          return APPColors.Switch_color;
                        }),
                        onChanged: (new_val) {
                          setState(() {
                            switch_state = new_val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
