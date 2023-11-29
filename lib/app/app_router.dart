import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/route_names.dart';
import 'package:life_flow/core/core.dart';
import 'package:life_flow/view/home/home_screen.dart';
import 'package:life_flow/view/login/login_screen.dart';
import 'package:life_flow/view/registeration/registration_screen.dart';
import 'package:life_flow/view/registeration/user_details_screen.dart';
import 'package:life_flow/view/registeration/verify_otp_screen.dart';
import 'package:life_flow/view/welcome/welcome_screen.dart';

class AppRouter {
  GoRouter router = GoRouter(
    redirect: (context, state) {
      if (context.read<AuthenticationCubit>().state is! Authenticated &&
          (!(state.fullPath?.contains("welcome") ?? false))) {
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
            builder: (context, state) => const LoginScreen(),
          ),
          //Login
          GoRoute(
            path: "register",
            name: RouteNames.register,
            builder: (context, state) => const RegistrationScreen(),
            routes: [
              GoRoute(
                path: "verify-otp",
                name: RouteNames.verifyOtp,
                builder: (context, state) => const VerifyOtpScreen(),
              ),
              GoRoute(
                path: "user-details",
                name: RouteNames.userDetails,
                builder: (context, state) => const UserDetailsScreen(),
              ),
            ],
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
