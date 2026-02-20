import 'package:flutter/material.dart';
import 'package:smart_home_app/Screens/widgets/Smart_devices_card.dart';
import 'package:smart_home_app/local_data/cards_data_list.dart';

class HomeScreenDevices extends StatelessWidget {
  const HomeScreenDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return
    GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: card_data_list.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1 / 1.3,
      ),
      itemBuilder: (context, index) {
        final card = card_data_list[index];
        return SmartDevicesCard(name: card.name, image_path: card.Image_path);
      },
    );
  }
}
