import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/route_names.dart';
import 'package:life_flow/core/core.dart';
import 'package:life_flow/view/home/home_screen.dart';
import 'package:life_flow/view/welcome/welcome_screen.dart';

class AppRouter {
  GoRouter router = GoRouter(
    redirect: (context, state) {
      if (context.read<AuthenticationCubit>().state is! Authenticated) {
        return "/welcome";
      }
      return null;
    },
    routes: [
      //Welcome
      GoRoute(
        path: "/welcome",
        name: RouteNames.welcome,
        builder: (context, state) => const WelcomeScreen(),
        routes: [
          //Login
          GoRoute(
            path: "login",
            name: RouteNames.login,
            builder: (context, state) => const WelcomeScreen(),
          ),
        ],
      ),

      //Home
      GoRoute(
        path: "/",
        name: RouteNames.home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
