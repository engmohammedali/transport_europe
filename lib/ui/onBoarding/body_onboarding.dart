import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyOnboarding extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final String img;
  final String imgEllipse;
  final String icon;

  // Constructor with required parameters
  BodyOnboarding({
    super.key,
    required this.onTap,
    required this.title,
    required this.img,
    required this.imgEllipse,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.r,
          right: 30.r,
          bottom: 60.r,
          top: 120.r, // فقط في الوضع الرأسي
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              softWrap: true,
              title,
              style: TextStyle(
                fontSize: 20.sp,
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.w400,
                fontFamily: 'Ubuntu Kurdish 0.81 met',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.r, vertical: 15.r),
              child: Image.asset(
                width: 250.w, // العرض ثابت في الوضع الرأسي
                height: 250.h, // الارتفاع ثابت في الوضع الرأسي
                img,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: onTap,
              child: SizedBox(
                width: 86,
                height: 86,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/imgs/Ellipse 1.png'),
                    Image.asset('assets/imgs/Ellipse 2.png'),
                    Image.asset(icon),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Image.asset(imgEllipse),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

























// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class BodyOnboarding extends StatelessWidget {
//   final void Function()? onTap;
//   final String title;
//   final String img;
//   final String imgEllipse;
//   final String icon;

//   // Constructor with required parameters
//   BodyOnboarding({
//     super.key,
//     required this.onTap,
//     required this.title,
//     required this.img,
//     required this.imgEllipse,
//     required this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: EdgeInsets.only(
//           left: 30,
//           right: 30,
//           bottom: 60, // ف
//           top: 240, // فقط في الوضع الرأسي
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
          
//             Text(
//               textAlign: TextAlign.center,
//               textDirection: TextDirection.rtl,
//               softWrap: true,
//               title,
//               style: TextStyle(
//                 fontSize: 20.sp,
//                 color: const Color.fromRGBO(0, 0, 0, 1),
//                 fontWeight: FontWeight.w400,
//                 fontFamily: 'Ubuntu Kurdish 0.81 met',
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 15),
//               child: Image.asset(
//                 width: 250.w, // العرض ثابت في الوضع الرأسي
//                 height: 250.h, // الارتفاع ثابت في الوضع الرأسي
//                 img,
//               ),
//             ),
//             // SizedBox(
//             //   height: 25.h,
//             // ),
//             GestureDetector(
//               onTap: onTap, // تأكد من تمرير onTap بشكل صحيح
//               child: SizedBox(
//                 width: 86,
//                 height: 86,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     Image.asset('assets/imgs/Ellipse 1.png'),
//                     Image.asset('assets/imgs/Ellipse 2.png'),
//                     Image.asset(icon),
//                     Positioned(
//                       top: 0,
//                       right: 0,
//                       child: Image.asset(imgEllipse),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
