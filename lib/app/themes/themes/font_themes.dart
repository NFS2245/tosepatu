import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontsThemes {
  static TextTheme mainTextTheme(BuildContext context) =>
      GoogleFonts.interTextTheme(Theme.of(context).textTheme);

  static TextStyle titleLarge = GoogleFonts.inter(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
  static TextStyle buttonTextStyle = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle inputTextStyle = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle titlePage = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle itemName = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  static TextStyle itemPrice = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bottomText = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static TextStyle checkoutText = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle checkoutText2 = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle totalText = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static TextStyle dateSortText = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle dateTextDetail = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static TextStyle drawerTextBig = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );
  static TextStyle drawerTextSmall = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
  static TextStyle riwayatText = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
  static TextStyle akuntext = GoogleFonts.inter(
    fontSize: 19,
    fontWeight: FontWeight.bold,
  );
  static TextStyle ubahemailText = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
