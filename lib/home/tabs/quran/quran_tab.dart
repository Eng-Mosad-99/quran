import 'package:flutter/material.dart';
import 'package:quran/utils/app_assets.dart';
import 'package:quran/utils/app_colors.dart';
import 'package:quran/utils/app_styles.dart';

import 'sura_list_widget.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * .04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 2, color: AppColors.primaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 2, color: AppColors.primaryColor),
              ),
              prefixIcon: ImageIcon(
                AssetImage(AppAssets.searchIcon),
                color: AppColors.primaryColor,
              ),
              hintText: 'Sura Name',
              hintStyle: AppStyles.bold16White,
            ),
          ),
          SizedBox(height: height * .02),
          Text('Most Recently', style: AppStyles.bold16White),
          SizedBox(height: height * .01),
          SizedBox(
            height: height * .17,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * .03,
                    vertical: height * .02,
                  ),
                  width: width * .65,
                  height: height * .17,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Al-Anbiya', style: AppStyles.bold24Black),
                          Text('الأنبياء', style: AppStyles.bold24Black),
                          Text('112 Verses', style: AppStyles.bold14Black),
                        ],
                      ),
                      Image.asset(AppAssets.mostRecentlyImg),
                    ],
                  ),
                );
              },
              separatorBuilder:
                  (context, index) => SizedBox(width: width * .02),
              itemCount: 8,
            ),
          ),
          SizedBox(height: height * .02),
          Text('Suras List', style: AppStyles.bold16White),
          SizedBox(height: height * .01),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => SuraListWidget(index: index),
              separatorBuilder: (context, index) {
                return Divider(endIndent: width * .1, indent: width * .1);
              },
              itemCount: 114,
            ),
          ),
        ],
      ),
    );
  }
}
