import 'package:flutter/material.dart';
import 'package:smart_home_app/Respnsive/ScreenArea.dart';
import 'package:smart_home_app/constance/AppStyle.dart';

class CustomTextFeild extends StatefulWidget {
  const CustomTextFeild({
    super.key,
    this.is_password,
    this.icon,
    required this.controller,
    this.onChanged,
    this.Hint_text,
  });
  final bool? is_password;
  final IconData? icon;
  final TextEditingController controller;
  final String? Hint_text;
  final Function(String)? onChanged;

  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    ScreenArea.init(context);
    return Container(
      width: ScreenArea.Width * 0.9,
      decoration: BoxDecoration(
        color: APPColors.color_select_elemnt,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        cursorColor: APPColors.APP_Main_Color,
        cursorRadius: Radius.circular(10),
        cursorWidth: 4,
        controller: widget.controller,
        onChanged: widget.onChanged,
        obscureText: widget.is_password ?? false ? _obscureText : false,
        decoration: InputDecoration(
          border: InputBorder.none,

          hintText: widget.Hint_text ?? "Edit",
          hintStyle: APPFontStyle.app_style_poppins(
            size: 15,
            font_color: APPColors.color_not_select_elemnt,
          ),
          prefixIcon: Icon(
            widget.icon ?? Icons.edit,
            color: APPColors.APP_Main_Color,
          ),
          suffixIcon: (widget.is_password ?? false)
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: APPColors.APP_Main_Color,
                  ),
                )
              : null,
        ),
        style: APPFontStyle.app_style_poppins(
          font_color: APPColors.APP_Main_Color,
        ),
      ),
    );
  }
}
