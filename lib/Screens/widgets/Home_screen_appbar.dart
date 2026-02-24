import 'package:flutter/material.dart';
import 'package:smart_home_app/Screens/CardScreen.dart';
import 'package:smart_home_app/Screens/user_data_screen.dart';
import 'package:smart_home_app/constance/AppStyle.dart';
import 'package:smart_home_app/local_data/user_data.dart';

class HomeScreenAppbar extends StatelessWidget {
  const HomeScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Cardscreen()));
            },
            borderRadius: BorderRadius.circular(50),
            child: Image.asset("images/menu.png", height: 40, width: 40),
          ),
          InkWell(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => UserDataScreen()));
            },
            borderRadius: BorderRadius.circular(50),
            child: CircleAvatar(
              backgroundImage: User.image_or_char == UserShortcut.image
                  ? AssetImage(User.image_url ?? "")
                  : null,
              child: (User.image_or_char! == UserShortcut.char)
                  ? Center(
                      child: Text(
                        User.name![0],
                        style: APPFontStyle.app_style_poppins(size: 20),
                      ),
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
