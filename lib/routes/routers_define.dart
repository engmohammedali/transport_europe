import 'package:flutter/material.dart';
import 'package:transport_europe/routes/routes_name.dart';
import 'package:transport_europe/ui/forget_password/forget/forget_password.dart';
import 'package:transport_europe/ui/forget_password/verify/verify_page.dart';
import 'package:transport_europe/ui/login/login_screen.dart';

class AppRoute {
  Route generateRoute(RouteSettings route) {
    // this argument to be passed in any screen like this
    // final argument = route.arguments;
    switch (route.name) {
      case RoutesNames.homePage:
        return MaterialPageRoute(
          // builder: (_) => const OnboardingScreen(),
          builder: (_) => const Scaffold(),
        );
      case RoutesNames.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case RoutesNames.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgetPassword(),
        );
        case RoutesNames.verifyPage:
        return MaterialPageRoute(
          builder: (_) => const VerifyPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route define for ${route.name}"),
            ),
          ),
        );
    }
  }
}
