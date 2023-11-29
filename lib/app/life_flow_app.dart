import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/core/authentication/cubit/authentication_cubit.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class LifeFlowApp extends StatelessWidget {
  const LifeFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationCubit, AuthenticationState>(
      builder: (context, state) => MaterialApp.router(
        title: 'LifeFlow',
        routerConfig: AppRouter().router,
        theme: AppTheme().lightTheme,
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: "4K"),
          ],
        ),
      ),
    );
  }
}
