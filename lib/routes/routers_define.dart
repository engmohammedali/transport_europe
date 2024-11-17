import 'package:go_router/go_router.dart';
import 'package:transport_europe/routes/routes_name.dart';

class AppRoute {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: RoutesNames.homePage,
        // builder: (context , state) => HomeScreen(),
      ),
    ],
  );
}
