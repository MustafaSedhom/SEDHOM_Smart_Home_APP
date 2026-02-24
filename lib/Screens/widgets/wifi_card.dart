import 'package:flutter/material.dart';
import 'package:smart_home_app/Respnsive/ScreenArea.dart';
import 'package:smart_home_app/constance/AppStyle.dart';
import 'package:smart_home_app/local_data/Wifi_scaning_data.dart';

class WifiCard extends StatefulWidget {
  const WifiCard({super.key, required this.wifidata, this.onSelected});

  final WifiScaningData wifidata;
  final ValueChanged<bool>? onSelected;

  @override
  State<WifiCard> createState() => _WifiCardState();
}

class _WifiCardState extends State<WifiCard> {
  Color Card_color = Colors.white70;

  @override
  Widget build(BuildContext context) {
    ScreenArea.init(context);
    return InkWell(
      onTap: () async {
        if (widget.onSelected != null) {
          widget.onSelected!(true);
        }
        setState(() {
          Card_color = APPColors.color_select_elemnt;
        });
        await Future.delayed(const Duration(milliseconds: 200));
        setState(() {
          Card_color = APPColors.color_not_select_elemnt;
        });
      },
      child: Card(
        color: Card_color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.wifi),
              Text(
                (widget.wifidata.name!.length > 10 && ScreenArea.Width < 400)
                    ? "${widget.wifidata.name!.substring(0, 10)}…"
                    : widget.wifidata.name!,
                style: APPFontStyle.app_style_poppins(size: 15),
                maxLines: 1,
              ),
              widget.wifidata.is_locked!
                  ? Icon(Icons.lock)
                  : Icon(Icons.lock_open_rounded),
              Text(
                "${widget.wifidata.range!}%",
                style: APPFontStyle.app_style_poppins(size: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
