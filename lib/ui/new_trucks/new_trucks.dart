import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/widgets/app_text_form_feild.dart';

class NewTrucks extends StatefulWidget {
  const NewTrucks({super.key});

  @override
  State<NewTrucks> createState() => _UserProfileState();
}

class _UserProfileState extends State<NewTrucks> {
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
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/squar.png',
                          width: 242.r,
                          height: 160.r,
                        ),
                      ),
                      Positioned(
                          top: -20.h,
                          right: -20.h,
                          child: IconButton(
                              onPressed: () {},
                              icon: const CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  size: 18,
                                  color: ColorsManager.btncolor,
                                ),
                              )))
                    ],
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "عنوان الشركة",
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
                  hintText: 'ادخل العنوان',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "ادخل اسم الشركة",
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
                  hintText: 'اسم الشركة',
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
                  keyboardType: TextInputType.visiblePassword,
                  isObscureText: !isvisibility,
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
                  suffixIcon: const Icon(
                    Icons.add,
                    color: ColorsManager.btncolor,
                  ),
                  keyboardType: TextInputType.phone,
                  borderRadius: 16,
                  hintText: 'ادخل الرقم',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "الموقع",
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
                  hintText: 'ادخل الموقع',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "البريد الألكتروني",
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
                  suffixIcon: const Icon(
                    Icons.add,
                    color: ColorsManager.btncolor,
                  ),
                  keyboardType: TextInputType.datetime,
                  borderRadius: 16,
                  hintText: 'ادخل البريد الألكتروني',
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
