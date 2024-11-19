import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity.w,
          height: double.infinity.h,
          padding: EdgeInsets.symmetric(
            horizontal: 60.r,
          ),
          child: Center(
            child: Container(
              height: 280.h,
              width: 282.w,
              margin: const EdgeInsets.only(bottom: 20),
              alignment: Alignment.bottomCenter,
              child: Text(
                "Transport Europe",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(76, 181, 237, 1),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
