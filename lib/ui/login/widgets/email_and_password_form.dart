import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/helpers/space_helper.dart';
import 'package:transport_europe/core/theming/styles.dart';
import 'package:transport_europe/core/widgets/app_text_form_feild.dart';
import 'package:transport_europe/routes/extension.dart';
import 'package:transport_europe/routes/routes_name.dart';

class EmailAndPasswordForm extends StatefulWidget {
  const EmailAndPasswordForm({super.key});

  @override
  State<EmailAndPasswordForm> createState() => _EmailAndPasswordFormState();
}

class _EmailAndPasswordFormState extends State<EmailAndPasswordForm> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "البريد الإلكتروني",
          style: TextStyles.font16form,
        ),
        verticalspace(10),
        AppTextFormField(
          hintText: "mahmoudyatro@gmail.com",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'البريد الالكتروني مطلوب';
            }
          },
          prefixIcon: const Icon(
            Icons.email_rounded,
            color: Colors.grey,
          ),
        ),
        verticalspace(10),
        Text(
          "كلمة المرور",
          style: TextStyles.font16form,
        ),
        verticalspace(10),
        AppTextFormField(
          hintText: "*********",
          isObscureText: isObscureText,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'كلمة المرور مطلوبة';
            }
          },
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            icon: Icon(
              isObscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            context.pushNamed(RoutesNames.forgetPassword);
          },
          child: Text(
            "نسيت كلمة المرور",
            style: TextStyles.font16form.copyWith(
              fontSize: 10.sp,
            ),
          ),
        )
      ],
    ));
  }
}
