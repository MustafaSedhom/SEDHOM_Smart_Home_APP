import 'package:flutter/material.dart';
import 'package:smart_home_app/constance/AppStyle.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Guagescreen extends StatefulWidget {
  const Guagescreen({super.key});

  @override
  State<Guagescreen> createState() => _GuagescreenState();
}

class _GuagescreenState extends State<Guagescreen> {
  double value = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APPColors.APP_Main_Color,
      body: SafeArea(child: Text("data")),
    );
  }
}
