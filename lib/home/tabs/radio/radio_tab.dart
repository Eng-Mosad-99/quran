import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Radio Tab',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
