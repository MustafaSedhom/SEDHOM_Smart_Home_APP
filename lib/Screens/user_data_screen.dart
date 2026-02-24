import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/Respnsive/ScreenArea.dart';
import 'package:smart_home_app/Screens/widgets/Custom_text_button.dart';
import 'package:smart_home_app/Screens/widgets/custom_app_bar.dart';
import 'package:smart_home_app/Screens/widgets/custom_text_feild.dart';
import 'package:smart_home_app/constance/AppStyle.dart';
import 'package:smart_home_app/local_data/user_data.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  TextEditingController _name_controller = TextEditingController();
  TextEditingController _email_controller = TextEditingController();
  TextEditingController _address_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScreenArea.init(context);
    return Scaffold(
      backgroundColor: APPColors.APP_Main_Color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Gap(20),
          CustomAppBar(
            menu_icon_size: 30,
            Menu_Icon: Icons.settings_outlined,
            show_title: true,
            Title: "Settings",
            small_Title: "Profile",
            back_pressed: () {
              Navigator.of(context).pop();
            },
          ),
          Gap(20),
          // image
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(120),
            child: CircleAvatar(
              radius: (ScreenArea.Width > 500) ? 120 : 80,
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
          Gap(20),
          // user name text field
          CustomTextFeild(controller: _name_controller, Hint_text: "Name"),
          Gap(20),
          // user email text field
          CustomTextFeild(controller: _email_controller, Hint_text: "Email"),
          Gap(20),
          // user address text field
          CustomTextFeild(
            controller: _address_controller,
            Hint_text: "Address",
          ),
          Gap(20),
          // buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextButton(
                  txt: "Cancel",
                  on_preesed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CustomTextButton(txt: "Save", on_preesed: () {}),
              ],
            ),
          ),
          Gap(40),
        ],
      ),
    );
  }
}
