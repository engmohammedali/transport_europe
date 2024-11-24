import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/widgets/app_text_button.dart';

class Onboarding4 extends StatelessWidget {
  const Onboarding4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity.w,
        height: double.infinity.h,
        padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 75.r),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Hello-rafiki 1 (1).png',
                    width: 250.w,
                    height: 250.h,
                  ),
                  Text(
                    "مرحبا بك",
                    style: TextStyle(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 24.sp,
                      fontFamily: 'appfont',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text("احصل على تجربة ومشاركة أفضل",
                      style: TextStyle(
                        color: const Color.fromRGBO(142, 142, 142, 1),
                        fontSize: 16.sp,
                        fontFamily: 'appfont',
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTextButton(
                    backgroundColor: const Color.fromRGBO(76, 181, 237, 1),
                    buttonText: 'تواصل معنا',
                    textStyle: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 16,
                      fontFamily: 'appfont',
                      fontWeight: FontWeight.w400,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AppTextButton(
                    borderRadius: 32,
                    borderSide: const Color.fromRGBO(76, 181, 237, 1),
                    buttonHeight: 44.h,
                    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                    buttonText: 'تسجيل دخول ',
                    textStyle: const TextStyle(
                      color: Color.fromRGBO(76, 181, 237, 1),
                      fontSize: 16,
                      fontFamily: 'appfont',
                      fontWeight: FontWeight.w400,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
