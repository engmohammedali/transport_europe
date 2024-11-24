import 'package:flutter/material.dart';
import 'package:transport_europe/core/helpers/space_helper.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/theming/font_weight_helper.dart';
import 'package:transport_europe/core/widgets/app_text_form_feild.dart';
import 'package:transport_europe/ui/users/widgets/user_list_title.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "المستخدمين",
                    style: TextStyle(
                      fontFamily: 'appfont',
                      fontSize: 27,
                      fontWeight: FontWeightHelper.regular,
                      color: ColorsManager.darkBlue,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 2,
                color: ColorsManager.lightGray,
              ),
              verticalspace(14),
              AppTextFormField(
                borderRadius: 32.0,
                backgroundColor: ColorsManager.lighterGray,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.filter_list,
                    size: 25,
                    color: ColorsManager.lightGray,
                  ),
                ),
                hintText: '',
                validator: (String? users) {},
                prefixIcon: const Icon(
                  Icons.search,
                  size: 25,
                  color: ColorsManager.lightGray,
                ),
              ),
              verticalspace(22),
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, int index) {
                        return const UserListTitle(
                          imgUder: 'assets/images/user.png',
                          phon: '+31637079564',
                          email: 'abdulrezek2004@gmail.com',
                          username: 'عبدالرزاق الأحمد',
                        );
                      }))

              // إضافة مسافة بين الحقول
            ],
          ),
        ),
      ),
    );
  }
}
