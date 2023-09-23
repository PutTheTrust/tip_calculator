import 'package:flutter/material.dart';
import 'package:tip_calculator/constants/strings.dart';
import 'package:tip_calculator/widgets/custom_button.dart';
import 'package:tip_calculator/widgets/custom_space.dart';
import 'package:tip_calculator/widgets/left_title_widget.dart';

class TipWidget extends StatelessWidget {
  const TipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 39),
      child: Row(
        children: [
          LeftTitleWidget(topText: Strings.choose, bottomText: Strings.yourTip),
          const CustomSpacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: Strings.tenPercent,
                  isShowSub: true,
                ),
                CustomButton(
                  text: Strings.fifteenPercent,
                  isShowSub: true,
                ),
                CustomButton(
                  text: Strings.twentyPercent,
                  isShowSub: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
