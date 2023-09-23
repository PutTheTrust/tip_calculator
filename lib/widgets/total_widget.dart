import 'package:flutter/material.dart';
import 'package:tip_calculator/constants/strings.dart';
import 'package:tip_calculator/themes/styles.dart';
import 'package:tip_calculator/widgets/amount_widget.dart';

class TotalWidget extends StatelessWidget {
  final double bill;
  const TotalWidget({super.key, required this.bill});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24.0),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AmountWidget(
              text: Strings.mainTotal,
              amount: bill.toString(),
              textStyle: Styles.mainAmount,
              baseStyle: Styles.mainAmountSub,
              titleStyle: Styles.mainAmountTitle,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AmountWidget(
                  text: Strings.totalBill,
                  amount: "000",
                  textStyle: const TextStyle(color: Colors.cyan, fontSize: 24),
                  baseStyle: Styles.subAmount,
                  titleStyle: Styles.subTitle,
                ),
                AmountWidget(
                  text: Strings.totalTip,
                  amount: "000",
                  textStyle: const TextStyle(color: Colors.cyan, fontSize: 24),
                  baseStyle: Styles.subAmount,
                  titleStyle: Styles.subTitle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
