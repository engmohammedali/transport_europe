import 'package:flutter/material.dart';
import 'package:transport_europe/core/helpers/space_helper.dart';
import 'package:transport_europe/core/theming/styles.dart';
import 'package:transport_europe/core/widgets/app_text_form_feild.dart';

class EmailTextForm extends StatelessWidget {
  const EmailTextForm({super.key});

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
            prefixIcon: const Icon(Icons.email , color: Colors.grey,),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'البريد الإلكتروني مطلوب';
              }
            }),
      ],
    ));
  }
}
