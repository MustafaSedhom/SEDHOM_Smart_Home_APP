import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class RoomCard extends StatefulWidget {
  final String icon_url;
  final String name;
  final bool? state;
  final ValueChanged? switch_value;
  const RoomCard({
    super.key,
    this.switch_value,
    required this.icon_url,
    required this.name,
    this.state,
  });

  @override
  State<RoomCard> createState() => _RoomCardState();
}

class _RoomCardState extends State<RoomCard> {
  bool switch_val = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(widget.icon_url, width: 50, height: 50),
          Column(
            children: [
              Text(
                (widget.state != null && widget.state == true)
                    ? "Connected"
                    : "Not Connected",
                style: APPFontStyle.app_style_poppins(
                  size: 10,
                  font_Weight: FontWeight.w500,
                ),
              ),
              Gap(5),
              Text(
                "Smart ${widget.name}",
                style: APPFontStyle.app_style_poppins(),
              ),
            ],
          ),
          Gap(10),
          Transform.rotate(
            angle: 180 * pi,
            child: Switch(
              trackColor: MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.selected)) {
                  return APPColors.container_color;
                }
                return APPColors.Switch_active_color;
              }),
              thumbColor: MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.selected)) {
                  return APPColors.Switch_active_color;
                }
                return APPColors.Switch_color;
              }),
              value: switch_val,
              onChanged: (new_val) {
                setState(() {
                  switch_val = new_val;
                  widget.switch_value?.call(new_val);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
