import 'package:flutter/material.dart';
import 'package:tip_calculator/widgets/title_widget.dart';
import 'package:tip_calculator/widgets/total_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF5F3F4),
      body: SafeArea(
        child: Column(
          children: [
            // Title
            TitleWidget(),
            // Amount container
            TotalWidget()
            // Bill input

            // Percentage input

            // Split input
          ],
        ),
      ),
    );
  }
}
