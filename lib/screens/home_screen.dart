import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tip_calculator/models/tip_model.dart';
import 'package:tip_calculator/widgets/input_widget.dart';
import 'package:tip_calculator/widgets/split_widget.dart';
import 'package:tip_calculator/widgets/tip_widget.dart';
import 'package:tip_calculator/widgets/title_widget.dart';
import 'package:tip_calculator/widgets/total_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TipModel>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Color(0xFFF5F3F4),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Title
                  TitleWidget(),
                  // Amount container
                  TotalWidget(
                      bill: value.total,
                      tip: value.tip,
                      totalPP: value.perPerson),
                  // Bill input
                  InputWidget(),
                  // Percentage input
                  TipWidget(),
                  // Split input
                  SplitWidget(split: value.split)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
