import 'package:flutter/material.dart';
import 'package:smart_home_app/Screens/widgets/Smart_devices_card.dart';

class HomeScreenDevices extends StatelessWidget {
  const HomeScreenDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return // Devices card
    GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1 / 1.3,
      ),
      itemBuilder: (context, index) {
        return SmartDevicesCard();
      },
    );
  }
}
