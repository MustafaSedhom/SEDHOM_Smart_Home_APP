import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class APPColors {
  static const Color APP_Main_Color = Colors.white;
  static const Color font_color = Colors.black;
  static const Color font_active_color = Colors.white;
  static const Color Icon_Color = Colors.black;
  static const Color Icon_active_Color = Colors.white;
  static const Color Switch_color = Colors.white;
  static const Color Switch_active_color = Colors.black;
  static const Color container_color = Color.fromARGB(218, 209, 208, 208);
  static const Color container_active_color = Colors.black;
}

class APPFontStyle {
  static TextStyle app_style_poppins({
    double size = 18,
    FontWeight font_Weight = FontWeight.bold,
    Color font_color = Colors.black,
  }) {
    return GoogleFonts.poppins(
      fontSize: size,
      fontWeight: font_Weight,
      color: font_color,
    );
  }
}
