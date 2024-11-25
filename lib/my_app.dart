import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/routes/routers_define.dart';
import 'package:transport_europe/routes/routes_name.dart';

class MyApp extends StatelessWidget {
  final AppRoute appRoute;
  const MyApp({super.key, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(402, 874),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        onGenerateRoute: appRoute.generateRoute,
        builder: (context, widget) {
          return Directionality(
            textDirection:
                TextDirection.rtl, // الاتجاه الافتراضي: من اليمين إلى اليسار
            child: widget!,
          );
        },
        initialRoute: RoutesNames.newUserProfile,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
          ),
          primaryColor: const Color(0xFF247CFF),
          scaffoldBackgroundColor: Colors.white,
          cardColor: Colors.blue.shade50,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        locale: const Locale('ar', 'SA'),
        title: 'Transport Europe',
      ),
    );
  }
}
