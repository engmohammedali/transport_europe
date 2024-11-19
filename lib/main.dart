import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/my_app.dart';
import 'package:transport_europe/routes/routers_define.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    MyApp(
      appRoute: AppRoute(),
      
    ),
  );
}
