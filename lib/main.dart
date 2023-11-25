import 'package:flutter/material.dart';

void main() {
  runApp(const LifeFlowApp());
}

class LifeFlowApp extends StatelessWidget {
  const LifeFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LifeFlow',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD61107),
        ),
        useMaterial3: true,
      ),
      home: const Scaffold(),
    );
  }
}
