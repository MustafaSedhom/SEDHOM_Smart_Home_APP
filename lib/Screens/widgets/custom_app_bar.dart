import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class CustomAppBar extends StatelessWidget {
  final String? Title;
  final String? small_Title;
  final Function? back_pressed;
  final Function? menu_preesed;
  final bool? show_title;
  final IconData? Back_Icon;
  final IconData? Menu_Icon;
  final bool? show_menu_icon;
  final bool? show_Back_icon;

  const CustomAppBar({
    super.key,
    this.Title,
    this.small_Title,
    this.back_pressed,
    this.menu_preesed,
    this.show_title,
    this.Back_Icon,
    this.Menu_Icon,
    this.show_menu_icon,
    this.show_Back_icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            show_Back_icon == false
                ? SizedBox()
                : InkWell(
                    onTap: () {
                      back_pressed?.call();
                    },
                    borderRadius: BorderRadius.circular(40),
                    child: Icon(
                      Back_Icon ?? Icons.arrow_back_ios,
                      size: 20,
                      color: APPColors.Icon_Color,
                    ),
                  ),
            (show_title == true)
                ? Column(
                    children: [
                      Text(
                        Title ?? "Title",
                        style: APPFontStyle.app_style_poppins(),
                      ),
                      Gap(5),
                      Text(
                        small_Title ?? "Small Title",
                        style: APPFontStyle.app_style_poppins(
                          size: 12,
                          font_Weight: FontWeight.normal,
                        ),
                      ),
                    ],
                  )
                : SizedBox(),
            show_menu_icon == false
                ? SizedBox()
                : InkWell(
                    onTap: () {
                      menu_preesed?.call();
                    },
                    borderRadius: BorderRadius.circular(30),
                    child: Icon(
                      Menu_Icon ?? Icons.more_vert_outlined,
                      size: 20,
                      color: APPColors.Icon_Color,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
