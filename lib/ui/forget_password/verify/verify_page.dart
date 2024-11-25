// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:transport_europe/core/helpers/space_helper.dart';
// import 'package:transport_europe/core/theming/styles.dart';
// import 'package:transport_europe/core/widgets/app_text_button.dart';
// import 'package:transport_europe/routes/extension.dart';
// import 'package:transport_europe/ui/forget_password/layout_page.dart';
// import 'package:transport_europe/ui/forget_password/verify/input_smtp_feilds.dart';
// import 'package:transport_europe/ui/forget_password/verify/resend_otp.dart';

// class VerifyPage extends StatelessWidget {
//   const VerifyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutPage(
//         body: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             verticalspace(90),
//             Align(
//               child: Text(
//                 "رمز التحقق",
//                 style: TextStyles.font24BlackRegular,
//               ),
//             ),
//             verticalspace(16),
//             Align(
//               child: Text(
//                 "أدخل رمز التحقق",
//                 style: TextStyles.font16form,
//               ),
//             ),
//             verticalspace(30),
//             const InputSmtpFeilds(),
//             verticalspace(14),
//             const ResendOtp(),
//             verticalspace(190),
//             AppTextButton(
//               buttonText: "تأكيد",
//               textStyle: TextStyles.font16textbutton,
//               onPressed: () {
//                 doneOtp(context);
//               },
//             )
//           ],
//         ),
//       ),
//     ));
//   }

//   doneOtp(context) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         content: SizedBox(
//           height: 454.h,
//           width: 361.w,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Align(
//                   alignment: Alignment.bottomRight,
//                   child: IconButton(
//                       onPressed: () {
//                         context.pop();
//                       },
//                       icon: const Icon(Icons.close))),
//               verticalspace(45),
//               Image.asset(
//                 "assets/images/doneotp.png",
//                 height: 124.h,
//                 width: 124.w,
//               ),
//               verticalspace(23),
//               Text(
//                 "تهنئة",
//                 style: TextStyles.font24BlackRegular,
//               ),
//               verticalspace(7),
//               Text(
//                 "حسابك جاهز للاستخدام. سيتم إعادة توجيهك إلى الصفحة الرئيسية في غضون ثوانٍ قليلة.",
//                 style: TextStyles.font16form.copyWith(fontSize: 12.sp),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
