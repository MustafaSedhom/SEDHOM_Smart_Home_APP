import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/Screens/widgets/Home_screen_appbar.dart';
import 'package:smart_home_app/Screens/widgets/Home_screen_welcome.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(10),
              HomeScreenAppbar(),
              Gap(30),
              HomeScreenWelcome(),
            ],
          ),
        ),
      ),
    );
  }
}
