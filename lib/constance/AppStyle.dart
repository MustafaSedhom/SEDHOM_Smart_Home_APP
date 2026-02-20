import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class APPColors {
  static const Color APP_Main_Color = Colors.white;
  static const Color font_color = Colors.black87;
  static const Color Icon_Color = Colors.black54;
  static const Color Switch_color = Colors.white;
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
