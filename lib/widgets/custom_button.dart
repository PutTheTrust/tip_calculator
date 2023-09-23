import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tip_calculator/themes/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool isShowSub;
  const CustomButton({super.key, required this.text, required this.isShowSub});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: TextButton(
        style: Styles.button,
        onPressed: () {},
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: text,
                style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
              ),
              TextSpan(
                text: isShowSub ? "%" : "",
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
