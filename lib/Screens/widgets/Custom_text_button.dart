import 'package:flutter/material.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.txt, this.on_preesed});
  final String txt;
  final Function? on_preesed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        on_preesed?.call();
      },
      style: TextButton.styleFrom(
        backgroundColor: APPColors.color_select_elemnt,
        foregroundColor: APPColors.APP_Main_Color,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        textStyle: APPFontStyle.app_style_poppins(),
      ),
      child: Padding(padding: const EdgeInsets.all(8.0), child: Text(txt)),
    );
  }
}
