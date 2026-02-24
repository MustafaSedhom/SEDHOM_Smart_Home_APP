import 'package:flutter/material.dart';
import 'package:smart_home_app/Respnsive/ScreenArea.dart';
import 'package:smart_home_app/Screens/widgets/wifi_card.dart';
import 'package:smart_home_app/constance/AppStyle.dart';
import 'package:smart_home_app/local_data/Wifi_scaning_data.dart';

// ignore: must_be_immutable
class WifiListView extends StatelessWidget {
  WifiListView({super.key});
  List<WifiScaningData> Wifi_Afer_scanning = [
    WifiScaningData(name: "Mustafa Sedhom1", range: 37, is_locked: true),
    WifiScaningData(name: "Mustafa Sedhom2", range: 55, is_locked: false),
    WifiScaningData(name: "Mustafa Sedhom3", range: 87, is_locked: true),
    WifiScaningData(name: "Mustafa Sedhom4", range: 42, is_locked: false),
    WifiScaningData(name: "Mustafa Sedhom5", range: 72, is_locked: true),
    WifiScaningData(name: "Mustafa Sedhom6", range: 56, is_locked: true),
    WifiScaningData(name: "Mustafa Sedhom7", range: 11, is_locked: true),
    WifiScaningData(name: "Mustafa Sedhom8", range: 98, is_locked: false),
    WifiScaningData(name: "Mustafa Sedhom9", range: 77, is_locked: true),
    WifiScaningData(name: "Mustafa Sedhom0", range: 65, is_locked: true),
    WifiScaningData(name: "Mustafa Sedhom3", range: 34, is_locked: false),
    WifiScaningData(name: "Mustafa Sedhom3", range: 21, is_locked: true),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenArea.init(context);
    return Container(
      height: ScreenArea.Height * 0.5,
      width: ScreenArea.Width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: APPColors.container_color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.builder(
          itemCount: Wifi_Afer_scanning.length,
          itemBuilder: (context, index) {
            return WifiCard(wifidata: Wifi_Afer_scanning[index]);
          },
        ),
      ),
    );
  }
}
