import 'package:flutter/material.dart';
import 'package:transport_europe/core/theming/styles.dart';

class ResendOtp extends StatelessWidget {
  const ResendOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          " لم يصل الرمز؟",
          style: TextStyles.font16form,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            " إعادة إرسال الرمز",
            style: TextStyles.font16form.copyWith(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
