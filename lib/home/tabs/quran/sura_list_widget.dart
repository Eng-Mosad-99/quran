import 'package:flutter/material.dart';
import 'package:quran/home/tabs/quran/quran_resources.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_styles.dart';

class SuraListWidget extends StatelessWidget {
  const SuraListWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Text('${index + 1}'.toString(), style: AppStyles.bold14White),
            Image.asset(AppAssets.suraNumberVector, width: 52),
          ],
        ),
        SizedBox(width: width * .05),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              QuranResources.englishQuranList[index],
              style: AppStyles.bold20White,
            ),
            Text(
              '${QuranResources.versesNumberList[index]} Verses',
              style: AppStyles.bold14White,
            ),
          ],
        ),
        Spacer(),
        Text(
          QuranResources.arabicQuranList[index],
          style: AppStyles.bold20White,
        ),
      ],
    );
  }
}
