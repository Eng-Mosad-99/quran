import 'package:flutter/material.dart';
import 'package:quran/utils/app_styles.dart';

import '../../../../utils/app_colors.dart';

class SuraContentWidget extends StatelessWidget {
  const SuraContentWidget({
    super.key,
    required this.suraContent,
  });
  final String suraContent;

  @override
  Widget build(BuildContext context) {
    return Text(
      suraContent,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: AppStyles.bold20Primary,
    );
  }
}
