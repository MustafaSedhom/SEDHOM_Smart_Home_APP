import 'package:flutter/material.dart';
import 'package:smart_home_app/Screens/widgets/wifi_card.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class WifiListView extends StatelessWidget {
  const WifiListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: APPColors.container_color,
        borderRadius: BorderRadius.circular(25),
      ),
      // child: Center(child: Text("data")),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.builder(
          itemCount: 40,
          itemBuilder: (context, index) {
            return WifiCard();
          },
        ),
      ),
    );
  }
}
