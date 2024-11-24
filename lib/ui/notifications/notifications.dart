import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/theming/font_weight_helper.dart';
import 'package:transport_europe/core/widgets/app_text_button.dart';
import 'package:transport_europe/ui/notifications/widgets/card_notifications.dart';

class Notifications extends StatelessWidget {
  Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity.h,
          padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.r),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "بريد الرسائل",
                    style: TextStyle(
                      fontFamily: 'appfont',
                      fontSize: 27.sp,
                      fontWeight: FontWeightHelper.regular,
                      color: ColorsManager.darkBlue,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 2,
                color: ColorsManager.lightGray,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.error,
                      color: ColorsManager.btncolor,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "هنالك 1 تنبيه تتم معالجته يرجى الانتظار قليلاً ",
                    style: TextStyle(
                      fontFamily: 'appfont',
                      fontSize: 12.sp,
                      fontWeight: FontWeightHelper.regular,
                      color: ColorsManager.lightGray,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.r, bottom: 20.r),
                child: SizedBox(
                  height: 60.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 160.w, // تحديد عرض ثابت للزر
                        child: AppTextButton(
                          borderRadius: 32,
                          verticalPadding: 10,
                          horizontalPadding: 15,
                          borderSide: const Color.fromRGBO(0, 0, 0, 0.25),
                          backgroundColor: Colors.black,
                          buttonText: 'تنبيهات مهمة جدا',
                          textStyle: TextStyle(
                            fontFamily: 'appfont',
                            fontSize: 12.sp,
                            fontWeight: FontWeightHelper.regular,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: 160.w, // تحديد عرض ثابت للزر
                        child: AppTextButton(
                          borderRadius: 32,
                          verticalPadding: 10,
                          horizontalPadding: 15,
                          borderSide: const Color.fromRGBO(255, 0, 0, 1),
                          backgroundColor:
                              const Color.fromRGBO(255, 255, 255, 1),
                          buttonText: 'تنبيهات عادية',
                          textStyle: TextStyle(
                            fontFamily: 'appfont',
                            fontSize: 12.sp,
                            fontWeight: FontWeightHelper.regular,
                            color: const Color.fromRGBO(255, 0, 0, 1),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: 160.w, // تحديد عرض ثابت للزر
                        child: AppTextButton(
                          borderRadius: 32,
                          verticalPadding: 10,
                          horizontalPadding: 15,
                          borderSide: const Color.fromRGBO(0, 207, 45, 1),
                          backgroundColor:
                              const Color.fromRGBO(255, 255, 255, 1),
                          buttonText: 'تنبيهات عادية',
                          textStyle: TextStyle(
                            fontFamily: 'appfont',
                            fontSize: 12.sp,
                            fontWeight: FontWeightHelper.regular,
                            color: const Color.fromRGBO(0, 207, 45, 1),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: 160.w, // تحديد عرض ثابت للزر
                        child: AppTextButton(
                          borderRadius: 32,
                          verticalPadding: 10,
                          horizontalPadding: 15,
                          borderSide: const Color.fromRGBO(255, 251, 0, 1),
                          backgroundColor:
                              const Color.fromRGBO(255, 255, 255, 1),
                          buttonText: 'تنبيهات ضعيفة',
                          textStyle: TextStyle(
                            fontFamily: 'appfont',
                            fontSize: 12.sp,
                            fontWeight: FontWeightHelper.regular,
                            color: const Color.fromRGBO(255, 251, 0, 1),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // // عرض إشعارات في الأسفل
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, int index) {
                      return const CardNotifications(
                        alert: 'شاحنة متوفرة',
                        title: 'LASO Transportes, S.A',
                        location: 'صربيا - قطاع 1',
                        dataTime: '27/10/2024',
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:transport_europe/core/theming/colors.dart';
// import 'package:transport_europe/core/theming/font_weight_helper.dart';
// import 'package:transport_europe/core/widgets/app_text_button.dart';
// import 'package:transport_europe/ui/notifications/widgets/card_notifications.dart';

// class Notifications extends StatelessWidget {
//   Notifications({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 20.sp),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 15.r),
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: Text(
//                     "بريد الرسائل",
//                     style: TextStyle(
//                       fontFamily: 'appfont',
//                       fontSize: 27.sp,
//                       fontWeight: FontWeightHelper.regular,
//                       color: ColorsManager.darkBlue,
//                     ),
//                   ),
//                 ),
//               ),
//               const Divider(
//                 height: 2,
//                 color: ColorsManager.lightGray,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.error,
//                         color: ColorsManager.btncolor,
//                       )),
//                   SizedBox(
//                     width: 15.w,
//                   ),
//                   Text(
//                     "هنالك 1 تنبيه تتم معالجته يرجى الانتظار قليلاً ",
//                     style: TextStyle(
//                       fontFamily: 'appfont',
//                       fontSize: 12.sp,
//                       fontWeight: FontWeightHelper.regular,
//                       color: ColorsManager.lightGray,
//                     ),
//                   ),
//                 ],
//               ),
//               // SizedBox(
//               //   child: Row(
//               //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               //     children: [
//               //       AppTextButton(
//               //         verticalPadding: 10,
//               //         horizontalPadding: 15,
//               //         borderSide: const Color.fromRGBO(0, 0, 0, 0.25),
//               //         backgroundColor: const Color.fromRGBO(0, 0, 0, 0.25),
//               //         buttonText: 'تنبيهات مهمة جدا ',
//               //         textStyle: TextStyle(
//               //           fontFamily: 'appfont',
//               //           fontSize: 12.sp,
//               //           fontWeight: FontWeightHelper.regular,
//               //           color: const Color.fromRGBO(255, 255, 255, 1),
//               //         ),
//               //         onPressed: () {},
//               //       ),
//               //       AppTextButton(
//               //         verticalPadding: 10,
//               //         horizontalPadding: 15,
//               //         borderSide: const Color.fromRGBO(255, 0, 0, 1),
//               //         backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
//               //         buttonText: 'تنبيهات عادية',
//               //         textStyle: TextStyle(
//               //           fontFamily: 'appfont',
//               //           fontSize: 12.sp,
//               //           fontWeight: FontWeightHelper.regular,
//               //           color: const Color.fromRGBO(255, 0, 0, 1),
//               //         ),
//               //         onPressed: () {},
//               //       ),
//               //       AppTextButton(
//               //         verticalPadding: 10,
//               //         horizontalPadding: 15,
//               //         borderSide: const Color.fromRGBO(0, 207, 45, 1),
//               //         backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
//               //         buttonText: 'تنبيهات عادية',
//               //         textStyle: TextStyle(
//               //             fontFamily: 'appfont',
//               //             fontSize: 12.sp,
//               //             fontWeight: FontWeightHelper.regular,
//               //             color: const Color.fromRGBO(0, 207, 45, 1)),
//               //         onPressed: () {},
//               //       ),
//               //       AppTextButton(
//               //         verticalPadding: 10,
//               //         horizontalPadding: 15,
//               //         borderSide: const Color.fromRGBO(255, 251, 0, 1),
//               //         backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
//               //         buttonText: 'تنبيهات ضعيفة',
//               //         textStyle: TextStyle(
//               //           fontFamily: 'appfont',
//               //           fontSize: 12.sp,
//               //           fontWeight: FontWeightHelper.regular,
//               //           color: const Color.fromRGBO(255, 251, 0, 1),
//               //         ),
//               //         onPressed: () {},
//               //       ),
//               //     ],
//               //   ),
//               // ),

//               Expanded(
//                 child: ListView.builder(
//                     itemCount: 5,
//                     itemBuilder: (context, int index) {
//                       return const CardNotifications(
//                         alert: 'شاحنة متوفرة',
//                         title: 'LASO Transportes, S.A.',
//                         location: 'صربيا - قطاع 1',
//                         dataTime: 'شاحنة متوفرة',
//                       );
//                     }),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
