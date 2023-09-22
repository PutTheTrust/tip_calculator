import 'package:flutter/material.dart';

class AmountWidget extends StatelessWidget {
  final String text;
  final String amount;
  final TextStyle baseStyle;
  final TextStyle textStyle;
  final TextStyle titleStyle;

  const AmountWidget(
      {super.key,
      required this.text,
      required this.amount,
      required this.textStyle,
      required this.baseStyle,
      required this.titleStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: titleStyle,
        ),
        RichText(
          text: TextSpan(
            style: baseStyle,
            children: <TextSpan>[
              const TextSpan(text: "\$"),
              TextSpan(
                text: amount,
                style: textStyle,
              )
            ],
          ),
        ),
      ],
    );
  }
}
