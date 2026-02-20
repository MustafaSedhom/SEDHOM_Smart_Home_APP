import 'package:flutter/material.dart';
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
          InkWell(child: Image.asset("images/menu.png", height: 40, width: 40)),
          InkWell(
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
