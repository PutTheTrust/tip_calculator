import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tip_calculator/models/tip_model.dart';
import 'package:tip_calculator/screens/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TipModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
