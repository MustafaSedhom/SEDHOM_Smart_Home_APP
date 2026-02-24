import 'package:flutter/material.dart';

class WifiCard extends StatefulWidget {
  const WifiCard({super.key});

  @override
  State<WifiCard> createState() => _WifiCardState();
}

class _WifiCardState extends State<WifiCard> {
  Color Card_color = Colors.white70;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        setState(() {
          Card_color = Colors.lightBlue;
        });
        await Future.delayed(const Duration(milliseconds: 200));
        setState(() {
          Card_color = Colors.white70;
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
              Text("name wifi"),
              Icon(Icons.lock),
              Text("55%"),
            ],
          ),
        ),
      ),
    );
  }
}
