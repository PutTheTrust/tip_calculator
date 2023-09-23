import 'package:flutter/material.dart';
import 'package:tip_calculator/constants/strings.dart';
import 'package:tip_calculator/widgets/input_widget.dart';
import 'package:tip_calculator/widgets/left_title_widget.dart';
import 'package:tip_calculator/widgets/title_widget.dart';
import 'package:tip_calculator/widgets/total_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF5F3F4),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              // Title
              TitleWidget(),
              // Amount container
              TotalWidget(),
              // Bill input
              InputWidget()
              // Percentage input

              // Split input
            ],
          ),
        ),
      ),
    );
  }
}
