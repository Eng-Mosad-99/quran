import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppStyles {
  static TextStyle bold16White = GoogleFonts.elMessiri(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  static TextStyle bold20White = GoogleFonts.elMessiri(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  static TextStyle bold20Primary = GoogleFonts.elMessiri(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  ); static TextStyle bold24Primary = GoogleFonts.elMessiri(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static TextStyle bold24Black = GoogleFonts.elMessiri(
    color: AppColors.blackBgColor,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static TextStyle bold14Black = GoogleFonts.elMessiri(
    color: AppColors.blackBgColor,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  static TextStyle bold14White = GoogleFonts.elMessiri(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
}
