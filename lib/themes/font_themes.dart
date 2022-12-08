import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFontsThemes {
  static TextTheme mainTextTheme(BuildContext context) =>
      GoogleFonts.interTextTheme(Theme.of(context).textTheme);

  static TextStyle displaySemiMedium = GoogleFonts.inter(
    fontSize: 30,
    height: 36,
    fontWeight: FontWeight.w600,
  );
}
