import 'package:flutter/material.dart';
import 'package:life_flow/app/app.dart';

class LifeFlowApp extends StatelessWidget {
  const LifeFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'LifeFlow',
      routerConfig: AppRouter().router,
      theme: AppTheme().lightTheme,
    );
  }
}
