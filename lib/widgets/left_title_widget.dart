import 'package:flutter/material.dart';

class LeftTitleWidget extends StatelessWidget {
  final String topText;
  final String bottomText;
  const LeftTitleWidget(
      {super.key, required this.topText, required this.bottomText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(bottomText),
      ],
    );
  }
}
