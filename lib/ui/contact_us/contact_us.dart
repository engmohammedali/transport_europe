import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 60.r),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(251, 251, 251, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 15.r),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/car5.png',
                    height: 200.h,
                    width: 200.w,
                  ),
                  Text(
                    "Transport Europe",
                    style: TextStyle(
                        color: const Color.fromRGBO(
                          76,
                          181,
                          237,
                          1,
                        ),
                        fontSize: 24.sp,
                        fontFamily: 'appfont',
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MyWidget(
                    icon: 'assets/images/call.png',
                    title: "+31 6 37079564",
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 325.w,
                    child: const Divider(
                      height: 1,
                      color: Color.fromRGBO(230, 230, 230, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const MyWidget(
                    icon: 'assets/images/sms.png',
                    title: "abdulrezek2004@gmail.com",
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    softWrap: true,
                    textAlign: TextAlign.center,
                    "تطبيق شامل ومتخصص ويحوي جميع شركات الشحن في جميع دول اوربا",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(142, 142, 142, 1),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // إضافة الوظيفة هنا
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(76, 181, 237, 1)),
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14.sp,
                          fontFamily: 'appfont',
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String title;
  final String icon;

  const MyWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: 'Poppins',
              color: const Color.fromRGBO(149, 149, 149, 1),
              fontSize: 16.sp,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
