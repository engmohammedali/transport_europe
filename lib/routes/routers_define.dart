import 'package:flutter/material.dart';
import 'package:transport_europe/routes/routes_name.dart';
import 'package:transport_europe/ui/contact_us/contact_us.dart';
import 'package:transport_europe/ui/login/login_screen.dart';
import 'package:transport_europe/ui/onBoarding/onboarding_pags.dart';
import 'package:transport_europe/ui/onBoarding/splash.dart';

class AppRoute {
  Route generateRoute(RouteSettings route) {
    // this argument to be passed in any screen like this
    // final argument = route.arguments;
    switch (route.name) {
      case RoutesNames.onboarding:
        return MaterialPageRoute(
          builder: (_) => OnboardingPags(),
        );

      case RoutesNames.splash:
        return MaterialPageRoute(
          builder: (_) => const Splash(),
        );

      case RoutesNames.contactUs:
        return MaterialPageRoute(
          builder: (_) => const ContactUs(),
        );
      case RoutesNames.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
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
