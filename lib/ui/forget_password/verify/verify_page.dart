import 'package:flutter/material.dart';
import 'package:transport_europe/core/helpers/space_helper.dart';
import 'package:transport_europe/core/theming/styles.dart';
import 'package:transport_europe/ui/forget_password/layout_page.dart';
import 'package:transport_europe/ui/forget_password/verify/input_smtp_feilds.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutPage(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        verticalspace(90),
        Align(
          child: Text(
            "رمز التحقق",
            style: TextStyles.font24BlackRegular,
          ),
        ),
        verticalspace(16),
        Align(
          child: Text("أدخل رمز التحقق" , style: TextStyles.font16form,),
        ),
        verticalspace(93),
        const InputSmtpFeilds(),
      ],
    ));
  }
}
