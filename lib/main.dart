import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/core/authentication/cubit/authentication_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => AuthenticationCubit(),
      child: const LifeFlowApp(),
    ),
  );
}
