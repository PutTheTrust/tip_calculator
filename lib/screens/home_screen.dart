import 'package:flutter/material.dart';
import 'package:tip_calculator/widgets/title_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // Title
          TitleWidget()
          // Amount container

          // Bill input

          // Percentage input

          // Split input
        ],
      ),
    );
  }
}
