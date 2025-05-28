import 'package:flutter/material.dart';
import 'package:quran/home/home_screen.dart';
import 'package:quran/home/tabs/quran/details/sura_details_screen.dart';
import 'package:quran/home/tabs/quran/details/sura_details_screen1.dart';
import 'package:quran/utils/app_theme.dart';

void main() {
  runApp(const Quran());
}

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SuraDetailsScreen.routeName:(context)=> const SuraDetailsScreen(),
        SuraDetailsScreen1.routeName:(context)=> const SuraDetailsScreen1(),
      },
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
