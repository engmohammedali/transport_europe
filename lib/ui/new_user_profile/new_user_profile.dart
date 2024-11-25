import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/sherd/img_user.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/widgets/app_text_form_feild.dart';

class NewUserProfile extends StatefulWidget {
  const NewUserProfile({super.key});

  @override
  State<NewUserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<NewUserProfile> {
  bool isvisibility = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 15.r, vertical: 20.r),
        child: Container(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 20.r, vertical: 40.r),
          width: double.infinity.w,
          height: double.infinity.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: ColorsManager.lightBlue),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImgUser(
                  height: 108.h,
                  width: 108.w,
                  icon: Icons.add_circle,
                  iconColor: ColorsManager.btncolor,
                  imgUser: 'assets/images/userdefilt.png',
                  onTap: () {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "الاسم الثلاثي ",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsManager.lightGray,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 6.h,
                ),
                AppTextFormField(
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'ادخل الاسم الثلاثي',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "البريد الالكتروني",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsManager.lightGray,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 6.h,
                ),
                AppTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  borderRadius: 16,
                  hintText: 'ادخل البريد الالكتروني',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "كلمة المرور",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsManager.lightGray,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 6.h,
                ),
                AppTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  isObscureText: !isvisibility,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isvisibility = !isvisibility;
                        });
                      },
                      icon: isvisibility
                          ? const Icon(
                              Icons.visibility_off,
                              color: ColorsManager.btncolor,
                            )
                          : const Icon(
                              Icons.visibility,
                              color: ColorsManager.lightGray,
                            )),
                  borderRadius: 16,
                  hintText: 'ادخل كلمة المرور',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "رقم الهاتف",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsManager.lightGray,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 6.h,
                ),
                AppTextFormField(
                  keyboardType: TextInputType.phone,
                  borderRadius: 16,
                  hintText: 'ادخل رقم الهاتف',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "نوع المستخدم",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsManager.lightGray,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 6.h,
                ),
                AppTextFormField(
                  keyboardType: TextInputType.text,
                  suffixIcon: DropdownButton(
                    iconEnabledColor: ColorsManager.lightGray,
                    underline: const SizedBox.shrink(),
                    items: const [
                      DropdownMenuItem(
                        value: 1,
                        child: Text('1'),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text('2'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  borderRadius: 16,
                  hintText: 'ادخل نوع المستخدم',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "تاريخ الميلاد",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsManager.lightGray,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 6.h,
                ),
                AppTextFormField(
                  keyboardType: TextInputType.datetime,
                  suffixIcon: const Icon(Icons.calendar_month,
                      color: ColorsManager.lightGray),
                  borderRadius: 16,
                  hintText: '',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // إضافة الوظيفة هنا
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(76, 181, 237, 1)),
                    child: Text(
                      "اضافة",
                      style: TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14.sp,
                          fontFamily: 'appfont',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
