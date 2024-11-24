import 'package:flutter/material.dart';
import 'package:transport_europe/routes/routes_name.dart';
import 'package:transport_europe/ui/add_a_reply%206/add_a_reply_6.dart';
import 'package:transport_europe/ui/contact_mail/contact_mail.dart';
import 'package:transport_europe/ui/contact_us/contact_us.dart';
import 'package:transport_europe/ui/edite_message/edite_message.dart';
import 'package:transport_europe/ui/login/login_screen.dart';
import 'package:transport_europe/ui/messages/messages.dart';
import 'package:transport_europe/ui/new_contact_mail/new_contact_mail.dart';
import 'package:transport_europe/ui/new_country/new_country.dart';
import 'package:transport_europe/ui/new_message/new_message.dart';
import 'package:transport_europe/ui/new_trucks/new_trucks.dart';
import 'package:transport_europe/ui/new_user_profile/new_user_profile.dart';
import 'package:transport_europe/ui/notifications/notifications.dart';
import 'package:transport_europe/ui/onBoarding/onboarding4.dart';
import 'package:transport_europe/ui/onBoarding/onboarding_pags.dart';
import 'package:transport_europe/ui/onBoarding/splash.dart';
import 'package:transport_europe/ui/user_profile/user_profile.dart';
import 'package:transport_europe/ui/users/users.dart';

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
      case RoutesNames.newUserProfile:
        return MaterialPageRoute(
          builder: (_) => const NewUserProfile(),
        );
      case RoutesNames.newContactMail:
        return MaterialPageRoute(
          builder: (_) => NewContactMail(),
        );
      case RoutesNames.addAReply6:
        return MaterialPageRoute(
          builder: (_) => const AddAReply6(),
        );
      case RoutesNames.notifications:
        return MaterialPageRoute(
          builder: (_) => Notifications(),
        );
      case RoutesNames.newcountry:
        return MaterialPageRoute(
          builder: (_) => const NewCountry(),
        );
      case RoutesNames.contactMail:
        return MaterialPageRoute(
          builder: (_) => const ContactMail(),
        );
      case RoutesNames.newTrucks:
        return MaterialPageRoute(
          builder: (_) => const NewTrucks(),
        );
      case RoutesNames.userProfile:
        return MaterialPageRoute(
          builder: (_) => const UserProfile(),
        );
      case RoutesNames.newMessage:
        return MaterialPageRoute(
          builder: (_) => NewMessage(),
        );
      case RoutesNames.messages:
        return MaterialPageRoute(
          builder: (_) => Messages(),
        );
      case RoutesNames.editeMessage:
        return MaterialPageRoute(
          builder: (_) => const EditeMessage(),
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
