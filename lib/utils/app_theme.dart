 import 'package:flutter/material.dart';
import 'package:quran/utils/app_colors.dart';
import 'package:quran/utils/app_styles.dart';

class AppTheme{
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.transparentColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      // backgroundColor: AppColors.primaryColor,
      // type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      headlineLarge:AppStyles.bold16White,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.blackDetailsBgColor,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: AppColors.primaryColor,
      ),
    ),
  );
 }