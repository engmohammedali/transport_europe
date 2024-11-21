import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/helpers/space_helper.dart';
import 'package:transport_europe/core/theming/styles.dart';
import 'package:transport_europe/core/widgets/app_text_button.dart';
import 'package:transport_europe/routes/extension.dart';
import 'package:transport_europe/routes/routes_name.dart';
import 'package:transport_europe/ui/forget_password/forget/email_text_form.dart';
import 'package:transport_europe/ui/forget_password/layout_page.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutPage(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalspace(90),
          Align(
            child: Text(
              "نسيت كلمة المرور",
              style: TextStyles.font24BlackRegular,
            ),
          ),
          verticalspace(15),
          Align(
            child: Text(
              "يرجى إدخال عنوان بريدك الالكتروني ",
              style: TextStyles.font16form,
            ),
          ),
          verticalspace(3),
          Align(
            child: Text(
              "لإرسال رمز التحقق",
              style: TextStyles.font16form,
            ),
          ),
          verticalspace(30),
          const EmailTextForm(),
          verticalspace(60),
          AppTextButton(
            buttonText: "التالي",
            textStyle: TextStyle(
              fontSize: 16.sp,
              color: Colors.white,
            ),
            onPressed: () {
              context.pushNamed(RoutesNames.verifyPage);
            },
          )
        ],
      ),
    ));
  }
}
