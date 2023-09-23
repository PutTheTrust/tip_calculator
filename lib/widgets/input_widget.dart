import 'package:flutter/material.dart';
import 'package:tip_calculator/constants/strings.dart';
import 'package:tip_calculator/widgets/left_title_widget.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftTitleWidget(
            topText: Strings.enter,
            bottomText: Strings.yourBill,
          ),
          const SizedBox(
            width: 34,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                prefixIcon: Image.asset("assets/images/icon-dollar.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
