import 'package:flutter/material.dart';
import 'package:smart_home_app/Respnsive/ScreenArea.dart';
import 'package:smart_home_app/Screens/widgets/Smart_devices_card.dart';
import 'package:smart_home_app/local_data/cards_data_list.dart';

class HomeScreenDevices extends StatelessWidget {
  const HomeScreenDevices({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenArea.init(context);
    int crossAxisCount = 2; // default
    double childAspectRatio = 1 / 1.3;
    if (ScreenArea.Width > 800) {
      crossAxisCount = 4;
    } else if (ScreenArea.Width > 400) {
      crossAxisCount = 2;
    }
    if (ScreenArea.Height > 1000) {
      childAspectRatio = 1 / 2;
    } else if (ScreenArea.Height > 800) {
      childAspectRatio = 1 / 1.3;
    } else if (ScreenArea.Height > 600) {
      childAspectRatio = 1 / 1.2;
    } else {
      childAspectRatio = 1 / 1.1;
    }

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: card_data_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        final card = card_data_list[index];
        return SmartDevicesCard(name: card.name, image_path: card.Image_path);
      },
    );
  }
}
