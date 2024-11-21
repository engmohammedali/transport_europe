import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputSmtpFeilds extends StatelessWidget {
  const InputSmtpFeilds({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffD0D0D0),
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 48.h,
          width: 50.w,
          child: const TextField(
            maxLines: 1,
            keyboardType: TextInputType.number,
          ),
        )
      ],
    );
  }
}
