import 'package:flutter/material.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hadith Tab',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
