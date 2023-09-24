import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tip_calculator/constants/strings.dart';
import 'package:tip_calculator/models/tip_model.dart';
import 'package:tip_calculator/widgets/custom_button.dart';
import 'package:tip_calculator/widgets/custom_space.dart';
import 'package:tip_calculator/widgets/left_title_widget.dart';

// ignore: must_be_immutable
class SplitWidget extends StatefulWidget {
  String split;
  SplitWidget({super.key, required this.split});

  @override
  State<SplitWidget> createState() => _SplitWidgetState();
}

class _SplitWidgetState extends State<SplitWidget> {
  @override
  Widget build(BuildContext context) {
    final tipProvider = Provider.of<TipModel>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftTitleWidget(topText: Strings.split, bottomText: Strings.theTotal),
          const CustomSpacer(),
          CustomButton(
            text: "-",
            isShowSub: false,
            onTap: () {
              setState(() {
                // widget.split = (int.parse(widget.split) + 1).toString();
                tipProvider.decrementSplit();
              });
            },
          ),
          Expanded(
              child: Center(
                  child: Text(
            widget.split,
            style: TextStyle(fontSize: 20),
          ))),
          CustomButton(
            text: "+",
            isShowSub: false,
            onTap: () {
              setState(() {
                // widget.split = (int.parse(widget.split) + 1).toString();
                tipProvider.incrementSplit();
              });
              print(widget.split);
            },
          )
        ],
      ),
    );
    ;
  }
}
