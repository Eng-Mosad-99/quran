import 'package:flutter/material.dart';
import 'package:quran/utils/app_styles.dart';

import '../../../../utils/app_colors.dart';

class SuraContent extends StatelessWidget {
  const SuraContent({
    super.key,
    required this.suraContent,
    required this.index,
  });
  final String suraContent;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15) ,
        border: Border.all(
          color: AppColors.primaryColor,
          width: 1,
        ),
      ),
      child: Text(
        '$suraContent [${index + 1}]',
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: AppStyles.bold20Primary,
      ),
    );
  }
}
