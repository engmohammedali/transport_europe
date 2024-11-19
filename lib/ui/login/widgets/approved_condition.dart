import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/helpers/space_helper.dart';

class ApprovedCondition extends StatelessWidget {
  const ApprovedCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          width: 20.w,
          height: 20.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 1.7),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.check,
            color: Colors.green,
            size: 12,
            weight: 50,
          ),
        ),
        horizontalspace(3),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: " بالتسجيل أنت توافق على",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: " شروط الخدمة",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: " و ",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: "سياسة الخصوصية",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500)),
        ]))
      ],
    );
  }
}
