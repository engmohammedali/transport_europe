// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


// class InputSmtpFeilds extends StatefulWidget {
//   const InputSmtpFeilds({super.key});

//   @override
//   State<InputSmtpFeilds> createState() => _InputSmtpFeildsState();
// }

// class _InputSmtpFeildsState extends State<InputSmtpFeilds> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Directionality(
//           textDirection: TextDirection.ltr,
//           child: Pinput(
//             length: 5,
//             defaultPinTheme: pinputTheme,
//             submittedPinTheme: pinputTheme.copyWith(
//               decoration: pinputTheme.decoration!.copyWith(
//                   border: Border.all(color: const Color(0xff4CB5ED)),
//                   color: const Color(0xffE2F5FF)),
//             ),
//             separatorBuilder: (index) => const SizedBox(width: 8),
//             hapticFeedbackType: HapticFeedbackType.lightImpact,
//           ),
//         )
//       ],
//     );
//   }

//   final pinputTheme = PinTheme(
//       width: 50.w,
//       height: 48.h,
//       textStyle: TextStyle(
//         fontSize: 20.sp,
//         color: Colors.black,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(color: const Color(0xffD0D0D0)),
//         borderRadius: BorderRadius.circular(8),
//       ));

 
// }
