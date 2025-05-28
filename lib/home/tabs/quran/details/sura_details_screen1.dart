import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/home/tabs/quran/details/sura_content.dart';
import 'package:quran/home/tabs/quran/details/sura_content_widget.dart';
import 'package:quran/home/tabs/quran/quran_resources.dart';
import 'package:quran/utils/app_assets.dart';
import 'package:quran/utils/app_colors.dart';
import 'package:quran/utils/app_styles.dart';

class SuraDetailsScreen1 extends StatefulWidget {
  const SuraDetailsScreen1({super.key});
  static const String routeName = 'sura_details1';

  @override
  State<SuraDetailsScreen1> createState() => _SuraDetailsScreen1State();
}

class _SuraDetailsScreen1State extends State<SuraDetailsScreen1> {
String suraContent = '';
  @override
  Widget build(BuildContext context) {
    int args = ModalRoute.of(context)?.settings.arguments as int;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    if (suraContent.isEmpty) {
      loadSuraFile1(args);
    }
    return Scaffold(
      backgroundColor: AppColors.blackDetailsBgColor,
      appBar: AppBar(
        title: Text(
          QuranResources.englishQuranList[args],
          style: AppStyles.bold20Primary,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .04),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppAssets.detailsLeftImage),
                    Text(
                      QuranResources.arabicQuranList[args],
                      style: AppStyles.bold24Primary,
                    ),
                    Image.asset(AppAssets.detailsRightImage),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height * .01),
          Expanded(
            child:
                suraContent.isEmpty
                    ? Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 1,
                        color: AppColors.primaryColor,
                      ),
                    )
                    : SingleChildScrollView(
                  child: SuraContentWidget(suraContent: suraContent),
                ),
          ),
          // Spacer(),
          Image.asset(AppAssets.detailsBottomImage),
        ],
      ),
    );
  }

  void loadSuraFile1(int index) async {
    String fileContent = await rootBundle.loadString(
      'assets/files/Suras/${index + 1}.txt',
    );
    List<String> suraLines = fileContent.split('\n');
    for (int i = 0; i < suraLines.length; i++) {
      suraLines[i] += '[${i + 1}]';
    }
    suraContent = suraLines.join();
    Future.delayed(Duration(seconds: 1), () => setState(() {}));
  }
}
