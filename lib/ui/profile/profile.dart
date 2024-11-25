import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/sherd/coustom_img.dart';
import 'package:transport_europe/core/theming/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
              color: ColorsManager.lightBlue,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 20.r),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CoustomImg(
                    urlImg: 'assets/images/user1.png',
                    height: 100.h,
                    width: 100.w,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "عبدالرزاق الأحمد",
                    style: TextStyle(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 24.sp,
                        fontFamily: 'appfont',
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  const MyWidget(
                    color: ColorsManager.gray,
                    icon: Icons.phone,
                    title: "+31 6 37079564",
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 340.w,
                    child: const Divider(
                      height: 1,
                      color: Color.fromRGBO(230, 230, 230, 1),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  const MyWidget(
                    color: ColorsManager.gray,
                    icon: Icons.email,
                    title: "abdulrezek2004@gmail.com",
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  SizedBox(
                    width: 340.w,
                    child: const Divider(
                      height: 1,
                      color: Color.fromRGBO(230, 230, 230, 1),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const MyWidget(
                      color: Colors.red,
                      icon: Icons.logout,
                      title: "تسجيل خروج",
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Image.asset(
                    'assets/images/car5.png',
                    height: 140.h,
                    width: 140.w,
                  ),
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
  final IconData icon;
  final Color color;

  const MyWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
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
