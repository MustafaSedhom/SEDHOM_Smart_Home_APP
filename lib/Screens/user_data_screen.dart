import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/Screens/widgets/custom_app_bar.dart';

class UserDataScreen extends StatelessWidget {
  const UserDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(children: [Gap(20), CustomAppBar()]),
    );
  }
}
