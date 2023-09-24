import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tip_calculator/constants/strings.dart';
import 'package:tip_calculator/models/tip_model.dart';
import 'package:tip_calculator/widgets/custom_space.dart';
import 'package:tip_calculator/widgets/left_title_widget.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textControllerProvider = Provider.of<TipModel>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftTitleWidget(
            topText: Strings.enter,
            bottomText: Strings.yourBill,
          ),
          const CustomSpacer(),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                prefixIcon: Image.asset("assets/images/icon-dollar.png"),
              ),
              controller: textControllerProvider.textEditingController,
              onChanged: (newText) {
                textControllerProvider.updateText(newText);
              },
              keyboardType: TextInputType.number,
            ),
          )
        ],
      ),
    );
  }
}
