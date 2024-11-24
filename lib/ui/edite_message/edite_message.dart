import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/widgets/app_text_form_feild.dart';

class EditeMessage extends StatefulWidget {
  const EditeMessage({super.key});

  @override
  State<EditeMessage> createState() => _UserProfileState();
}

class _UserProfileState extends State<EditeMessage> {
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
              EdgeInsetsDirectional.symmetric(horizontal: 20.r, vertical: 20.r),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.close,
                          color: Colors.red,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check,
                          color: ColorsManager.btncolor,
                        )),
                  ],
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
                  hintText: 'عبدالرزاق جمعة الأحمد',
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
                  hintText: 'abdulrezek2004@gmail.com',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "تاريخ الارسال",
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
                  hintText: '27/10/2000',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "الدولة",
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
                  hintText: 'إيطاليا',
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
                  borderRadius: 16,
                  hintText: 'admin',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "القطاع",
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
                  hintText: 'القطاع الشمالي',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 15.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "رمز الشركة",
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
                  hintText: 'ادخل رمز الشركة',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 15.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "الرسالة",
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
                  maxLines: 4,
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'ادخل محتوى الرسالة',
                  validator: (username) {},
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
