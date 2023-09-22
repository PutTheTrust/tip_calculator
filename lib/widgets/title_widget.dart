import 'package:flutter/material.dart';
import 'package:tip_calculator/constants/strings.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/icCalculatorBW.png",
          width: 50,
          height: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: Strings.titleP1),
                  TextSpan(
                    text: Strings.titleP2,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 32),
                  ),
                ],
              ),
            ),
            Text(
              Strings.titleP3,
              style: const TextStyle(fontWeight: FontWeight.w900),
            )
          ],
        )
      ],
    );
  }
}
