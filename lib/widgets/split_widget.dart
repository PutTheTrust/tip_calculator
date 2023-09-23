import 'package:flutter/material.dart';
import 'package:tip_calculator/constants/strings.dart';
import 'package:tip_calculator/widgets/custom_button.dart';
import 'package:tip_calculator/widgets/custom_space.dart';
import 'package:tip_calculator/widgets/left_title_widget.dart';

class SplitWidget extends StatefulWidget {
  const SplitWidget({super.key});

  @override
  State<SplitWidget> createState() => _SplitWidgetState();
}

class _SplitWidgetState extends State<SplitWidget> {
  final splitController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    splitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LeftTitleWidget(topText: Strings.split, bottomText: Strings.theTotal),
          const CustomSpacer(),
          const CustomButton(
            text: "-",
            isShowSub: false,
          ),
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
              ),
              controller: splitController,
            ),
          ),
          const CustomButton(
            text: "+",
            isShowSub: false,
          )
        ],
      ),
    );
  }
}
