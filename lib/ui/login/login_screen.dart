import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/helpers/space_helper.dart';
import 'package:transport_europe/core/theming/styles.dart';
import 'package:transport_europe/core/widgets/app_text_button.dart';
import 'package:transport_europe/ui/login/widgets/approved_condition.dart';
import 'package:transport_europe/ui/login/widgets/email_and_password_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
            vertical: 20.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalspace(80),
              Align(
                child: Text(
                  "تسجيل الدخول",
                  style: TextStyles.font24BlackRegular,
                ),
              ),
              verticalspace(72),
              const EmailAndPasswordForm(),
              verticalspace(20),
              const ApprovedCondition(),
              verticalspace(90),
              AppTextButton(
                buttonText: "تسجيل الدخول",
                textStyle:
                    TextStyles.font16textbutton,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
