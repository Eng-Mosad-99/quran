import 'package:flutter/material.dart';
import 'package:quran/utils/app_colors.dart';
import '../utils/app_assets.dart';
import 'tabs/hadith/hadith_tab.dart';
import 'tabs/quran/quran_tab.dart';
import 'tabs/radio/radio_tab.dart';
import 'tabs/sebha/sebha_tab.dart';
import 'tabs/timer/timer_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<String> backgroundImages = [
    AppAssets.quranBg,
    AppAssets.hadithBg,
    AppAssets.sebhaBg,
    AppAssets.radioBg,
    AppAssets.timerBg,
  ];
List<Widget> tabsBodyList = [
  QuranTab(),
  HadithTab(),
  SebhaTab(),
  RadioTab(),
  TimerTab(),
];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          backgroundImages[_selectedIndex],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(

          bottomNavigationBar: Theme(
            data: Theme.of(
              context,
            ).copyWith(canvasColor: AppColors.primaryColor),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: builtBottomNavigationBar(
                    index: 0,
                    // Use AppAssets for icons too
                    imageAsset: AppAssets.iconQuran,
                  ),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: builtBottomNavigationBar(
                    index: 1,
                    imageAsset: AppAssets.iconHadith,
                  ),
                  label: 'Hadith',
                ),
                BottomNavigationBarItem(
                  icon: builtBottomNavigationBar(
                    index: 2,
                    imageAsset: AppAssets.iconSebha,
                  ),
                  label: 'Sebha',
                ),
                BottomNavigationBarItem(
                  icon: builtBottomNavigationBar(
                    index: 3,
                    imageAsset: AppAssets.iconRadio,
                  ),
                  label: 'Radio',
                ),
                BottomNavigationBarItem(
                  icon: builtBottomNavigationBar(
                    index: 4,
                    imageAsset: AppAssets.iconTimer,
                  ),
                  label: 'Timer',
                ),
              ],
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppAssets.logo),
              Expanded(child: tabsBodyList[_selectedIndex]),
            ],
          ),
        ),
      ],
    );
  }

  Widget builtBottomNavigationBar({
    required int index,
    required String imageAsset, // Changed parameter name for clarity
  }) {
    return _selectedIndex == index
        ? Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.blackBgColor,
            borderRadius: BorderRadius.circular(66),
          ),
          child: ImageIcon(
            AssetImage(imageAsset),
          ), // Use the passed asset directly
        )
        : ImageIcon(AssetImage(imageAsset)); // Use the passed asset directly
  }
}
