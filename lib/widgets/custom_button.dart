import 'package:flutter/material.dart';
import 'package:tip_calculator/themes/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key, required this.text});

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
              const TextSpan(
                  text: "%", style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}